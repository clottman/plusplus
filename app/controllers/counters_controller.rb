class CountersController < ApplicationController
#require 'pusher'

	def index
		@counters = Counter.where(active: true)
		@new_counter = Counter.new
		@vm = {counters: @counters}
	end

	def increment
		@counter = Counter.find(params[:id])
		@counter.count = @counter.count + 1
		@counter.save

		Pusher.trigger_async('all_counters', 'increment', @counter.to_json)
		head :ok, content_type: "text/html"
	end

	def create
		@counter = Counter.create(counter_params)
		@counter.save
		Pusher.trigger_async('all_counters', 'new', @counter.to_json)
		head :ok, content_type: "text/html"
	end

	def destroy
		@counter = Counter.find(params[:id])
		@counter.active = false
		@counter.save
	end


	private

	def counter_params
		params.require(:counter).permit(:name, :count)
	end
end

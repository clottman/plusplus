class CountersController < ApplicationController

	def index
		@counters = Counter.all
		@new_counter = Counter.new
	end

	def increment
		@counter = Counter.find(params[:id])
		@counter.count = @counter.count + 1
		@counter.save
		render 'redraw_counter'
	end

	def create
		@counter = Counter.create(counter_params)
		@counter.save
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

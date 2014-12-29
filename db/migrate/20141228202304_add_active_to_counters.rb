class AddActiveToCounters < ActiveRecord::Migration
  def change
  	add_column :counters, :active, :boolean
	change_column_default :counters, :active, true
  end
end

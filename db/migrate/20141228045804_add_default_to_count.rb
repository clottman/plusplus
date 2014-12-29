class AddDefaultToCount < ActiveRecord::Migration
  def change
  	change_column_null :counters, :name, false
	change_column_default :counters, :count, 0
  end
end

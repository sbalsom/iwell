class RemoveTimeColumnsFromAvailabilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :availabilities, :start_time
    remove_column :availabilities, :end_time
    add_column :availabilities, :date, :datetime
  end
end

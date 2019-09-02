class AddTimesToAvailabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :availabilities, :start_time, :time
    add_column :availabilities, :end_time, :time
  end
end

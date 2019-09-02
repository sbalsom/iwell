class RemoveWeekDayFromAvailabilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :availabilities, :week_day
  end
end

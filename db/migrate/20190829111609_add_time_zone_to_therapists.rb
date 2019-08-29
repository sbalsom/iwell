class AddTimeZoneToTherapists < ActiveRecord::Migration[5.2]
  def change
    add_column :therapists, :time_zone, :string, default: "UTC"
  end
end

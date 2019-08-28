class AddRateToTherapists < ActiveRecord::Migration[5.2]
  def change
    add_column :therapists, :rate, :integer
  end
end

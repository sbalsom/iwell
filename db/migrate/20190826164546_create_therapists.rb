class CreateTherapists < ActiveRecord::Migration[5.2]
  def change
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.integer :avg_rating
      t.string :language
      t.text :bio
      t.string :photo
      t.integer :years_exp

      t.timestamps
    end
  end
end

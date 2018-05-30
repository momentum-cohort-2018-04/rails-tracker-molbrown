class CreateInsects < ActiveRecord::Migration[5.2]
  def change
    create_table :insects do |t|
      t.string :name
      t.string :species
      t.integer :latitude
      t.integer :longitude
      t.string :plant
      t.string :notes

      t.timestamps
    end
  end
end

class ChangeLatitudeToBeDecimalInInsects < ActiveRecord::Migration[5.2]
  def change
    change_column :insects, :latitude, :decimal
    change_column :insects, :longitude, :decimal
  end
end

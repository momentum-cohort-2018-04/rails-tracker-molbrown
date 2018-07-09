class RemoveNotesFromInsect < ActiveRecord::Migration[5.2]
  def change
    remove_column :insects, :notes
  end
end

class RemoveNotesColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :courts, :notes, :string
  end
end

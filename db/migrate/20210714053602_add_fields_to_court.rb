class AddFieldsToCourt < ActiveRecord::Migration[6.1]
  def change
    add_column :courts, :street, :string
    add_column :courts, :city, :string
    add_column :courts, :zip, :integer
    add_column :courts, :state, :string 
  end
end

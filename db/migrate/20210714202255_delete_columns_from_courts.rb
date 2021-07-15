class DeleteColumnsFromCourts < ActiveRecord::Migration[6.1]
  def change
    remove_column :courts, :zip
    remove_column :courts, :city
    remove_column :courts, :state
  end
end

class CreateCourts < ActiveRecord::Migration[6.1]
  def change
    create_table :courts do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :indoor
      t.boolean :fee
      t.boolean :public
      t.boolean :bathrooms
      t.integer :stars
      t.string :levelplay
      t.text :notes
      t.string :title

      t.timestamps
    end
  end
end

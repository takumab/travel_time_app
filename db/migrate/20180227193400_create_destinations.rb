class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.text :address
      t.float :latitude
      t.float :longitude
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end

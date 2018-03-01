class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :start_address
      t.string :end_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

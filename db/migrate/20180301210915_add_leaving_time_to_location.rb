class AddLeavingTimeToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :leaving_time, :datetime
  end
end

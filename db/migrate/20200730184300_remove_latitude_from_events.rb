class RemoveLatitudeFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :latitude, :float
  end
end

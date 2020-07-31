class RemoveLongitudeFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :longitude, :float
  end
end

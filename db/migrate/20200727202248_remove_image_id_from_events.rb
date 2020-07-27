class RemoveImageIdFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :image_id, :string
  end
end

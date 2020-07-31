class AddMainImageToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :main_image, :string
  end
end

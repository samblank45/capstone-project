class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :user_id
      t.datetime :date_time

      t.timestamps
    end
  end
end

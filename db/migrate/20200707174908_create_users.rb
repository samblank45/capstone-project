class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :biography
      t.text :hobbies
      t.string :country_origin
      t.string :current_location
      t.string :aliyah_date
      t.string :password_digest

      t.timestamps
    end
  end
end

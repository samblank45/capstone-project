class ChangeRecepient < ActiveRecord::Migration[6.0]
  def change
    rename_column :conversations, :recepient_id, :recipient_id
  end
end

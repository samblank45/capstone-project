class Conversation < ApplicationRecord
  validates_uniqueness_of :sender_id, scope: :recipient_id

  has_many :messages

  belongs_to :sender, foreign_key: :sender_id, class_name: "User" 
  belongs_to :recipient, foreign_key: :recipient_id, class_name: "User"

end

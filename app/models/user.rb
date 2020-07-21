class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :created_events, source: :event

  has_many :images
  has_many :messages #maybe no neccessary

  #this will get all convesations where user is the sender or recipient, this is the has_many association
  def conversations
    Conversation.where("sender_id = ?   OR recipient_id = ?", id, id)
  end

  def full_name 
    "#{first_name} #{last_name}"
  end

  has_many :user_events
  has_many :attending_events, through: :user_event, source: :event

end

class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, length: { maximum: 20}
  validates :password, length: { in: 6..20}

  has_many :events, dependent: :destroy

  has_many :images, dependent: :destroy
  has_many :messages, dependent: :destroy 

  has_many :user_events, dependent: :destroy
  has_many :attending_events, through: :user_events, source: :event


  #this will get all convesations where user is the sender or recipient, this is the has_many association
  def conversations
    Conversation.where("sender_id = ?   OR recipient_id = ?", id, id)
  end

  def full_name 
    "#{first_name} #{last_name}"
  end
end

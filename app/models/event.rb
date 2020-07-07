class Event < ApplicationRecord

  belongs_to :user

  has_many :user_events
  has_many :attending_users, through: :user_events, source: :user

 
end

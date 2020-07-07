class User < ApplicationRecord

  has_many :created_events, source: :event
  has_many :images
  has_many :messages
  has_many :conversations

  has_many :user_events
  has_many :attending_events, through: :user_event, source: :event


end

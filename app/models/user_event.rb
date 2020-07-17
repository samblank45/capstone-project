class UserEvent < ApplicationRecord

  validates_uniqueness_of :event_id, scope: :user_id

  belongs_to :event
  belongs_to :user

end

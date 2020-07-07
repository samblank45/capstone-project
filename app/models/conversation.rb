class Conversation < ApplicationRecord

  has_many :messages

  belongs_to :sender, class_name: "User"  #doesnt know how to split out// need to split out or it gets jumbled
  belongs_to :recepient, class_name: "User"

end

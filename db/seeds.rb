User.create!([
  {first_name: "alex", last_name: "blank", email: "alex@gmail.com", biography: "its a dream come true", hobbies: "driving, star gazing", country_origin: "russia", current_location: "haifa", aliyah_date: "november 15th, 2020", password: "password"},
  {first_name: "sam", last_name: "blank", email: "sam@gmail.com", biography: "im lost", hobbies: "fishing", country_origin: "usa", current_location: "tel aviv", aliyah_date: "2015 april", password: "password"},
  {first_name: "john", last_name: "blank", email: "john@gmail.com", biography: "loving life", hobbies: "bike riding", country_origin: "france", current_location: "haifa", aliyah_date: "nov 16th 2017", password: "password"}
])
Image.create!([
  {url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png", user_id: 1},
  {url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png", user_id: 2},
  {url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png", user_id: 3},
  {url: "test.png", user_id: 3}
])
Event.create!([
  {title: "arts and craft", description: "paiting session", location: "12 dizengoff, haifa", user_id: 2, date_time: nil},
  {title: "surfing", description: "hang out and surf some waves", location: "Tel Aviv beach", user_id: 3, date_time: "2020-01-06 09:30:00"},
  {title: "book club", description: "meet up over lotr", location: "herlz st, tel aviv", user_id: 2, date_time: nil},
  {title: "football", description: "friendly football match", location: "Tel Aviv, Hayarkon", user_id: 2, date_time: nil}
])
Conversation.create!([
  {sender_id: 1, recepient_id: 3},
  {sender_id: 2, recepient_id: 1},
  {sender_id: 3, recepient_id: 1}
])
Message.create!([
  {user_id: 1, text: "how are you?", conversation_id: 2},
  {user_id: 1, text: "where are you?", conversation_id: 1},
  {user_id: 2, text: "Hey whats up?", conversation_id: 3}
])
UserEvent.create!([
  {event_id: 1, user_id: 1},
  {event_id: 2, user_id: 3},
  {event_id: 3, user_id: 1},
  {event_id: 1, user_id: 2}
])

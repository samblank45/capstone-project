User.create!([
  {
    first_name: "sam",
    last_name: "blank",
    biography: "loving life",
    hobbies: "fishing, hiking",
    country_origin: "USA",
    current_location: "Tel Aviv",
    aliyah_date: "november 15th, 2007",
    email: "sblan@gmail.com",
    password_digest: "asdkfj234234kjsad"
  },
  {
    first_name: "alex",
    last_name: "blank",
    biography: "its a dream come true",
    hobbies: "driving, star gazing",
    country_origin: "russia",
    current_location: "haifa",
    aliyah_date: "november 15th, 2020",
    email: "alex@gmail.com",
    password_digest: "234sdfq34"
  },
  {
    first_name: "john",
    last_name: "santana",
    biography: "what is the meaning of life",
    hobbies: "football, basketball",
    country_origin: "france",
    current_location: "Tel Aviv",
    aliyah_date: "December 15th, 2017",
    email: "john@gmail.com",
    password_digest: "sdf2342sd"
  }
])

Event.create!([
  {
    title: "soccer game",
    description: "friendly soccer match",
    location: "Tel Aviv, Hayarkon park",
    user_id: 1,
    date_time:  "15:30 6/25/2020"
  },
  {
    title: "arts and craft",
    description: "paiting session",
    location: "12 dizengoff, haifa",
    user_id: 2,
    date_time:  "12:30 6/20/2020"
  },
  {
    title: "surfing",
    description: "hang out and surf some waves",
    location: "Tel Aviv beach",
    user_id: 3,
    date_time:  "9:30 6/1/2020"
  }
])
Conversation.create!([
  {
    sender_id: 1,
    recepient_id: 3
  },
  {
    sender_id: 2,
    recepient_id: 1
  },
  {
    sender_id: 3,
    recepient_id: 1
  }
])

Message.create!([
  {
    user_id: 1,
    text: "how are you?",
    conversation_id: 2
  },
  {
    user_id: 1,
    text: "where are you?",
    conversation_id: 1
  },
  {
    user_id: 2,
    text: "Hey whats up?",
    conversation_id: 3
  }
])


Image.create!([
  {
    url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
    user_id: 1
  },
  {
    url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
    user_id: 2
  },
  {
    url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
    user_id: 3
  }
])

UserEvent.create([
  {
    event_id: 1,
    user_id: 1
  },
  {
    event_id: 2,
    user_id: 3
  },
  {
    event_id: 3,
    user_id: 1
  }
])
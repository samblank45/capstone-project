User.create!([
  {first_name: "Zack", last_name: "Blacksmith", email: "Zack@gmail.com", biography: "I am a 88-year-old former personal trainer who enjoys binge-watching boxed sets, spreading fake news on Facebook and baking. I'm energetic and considerate, but can also be very standoffish and a bit lazy.", hobbies: "driving, star gazing, hiking, kayaking, long walks", country_origin: "russia", current_location: "Beer Sheva", aliyah_date: "November 15th, 2019", password: "password"},
  {first_name: "sam", last_name: "blank", email: "sam@gmail.com", biography: "I am a 19-year-old P.P.E. student who enjoys swimming, recycling and drone photography. I'm smart and gentle, but can also be very boring and a bit rude.", hobbies: "fishing, learning magic, model rockets, chainsaw carving, classic films", country_origin: "usa", current_location: "tel aviv", aliyah_date: "January 1st 2020", password: "password"},
  {first_name: "john", last_name: "Lakeman", email: "john@gmail.com", biography: "I'm a 45-year-old chef at own restaurant who enjoys cookery, watching sport and running. I'm considerate and friendly, but can also be very lazy and a bit disloyal.", hobbies: "bike riding, cooking, instagram, swimming, sports", country_origin: "france", current_location: "haifa", aliyah_date: "November 16th 2017", password: "password"},
  {first_name: "Tomer", last_name: "Akeman", email: "tomer@gmail.com", biography: "I'm  a 25-year-old personal trainer who enjoys tennis, walking and playing video games. I am inspiring and stable, but can also be very stingy and a bit over the top.", hobbies: "zip lining, backpacking, classic films, swimming, magic", country_origin: "South Africa", current_location: "haifa", aliyah_date: "December 7th 2019", password: "password"},
  {first_name: "Roy", last_name: "Feldman", email: "roy@gmail.com", biography: "I'm a 25-year-old former health centre receptionist who enjoys binge-watching boxed sets, eating and blogging. I'm giving and creative, but can also be very selfish and a bit violent.", hobbies: "bingo, cliff diving, archery, salsa dancing, storm chasing, palm reading", country_origin: "Ukraine", current_location: "tel aviv", aliyah_date: "July 5th 2019", password: "password"},
  {first_name: "Avi", last_name: "Berne", email: "avi@gmail.com", biography: "I'm addicted to chocolate, something which my family pointed out when he I 18. The problem intensified in 2015. I've lost six jobs as a result of my addiction, specifically: gym assistant, tea maker, health centre receptionist, kitchen assistant, cleaner at a studio and extra.", hobbies: "Civil war history, Juggling, Animal Husbandry, beach volleyball, Go kart racing", country_origin: "Canada", current_location: "Netanya", aliyah_date: "August 5th 2018", password: "password"},
  {first_name: "Daniel", last_name: "Levene", email: "daniel@gmail.com", biography: "I am Welsh. I finished school and then left academia. I have a severe phobia of buttons", hobbies: "Tennis, Pilates, painting, football", country_origin: "U.K.", current_location: "Eilat", aliyah_date: "August 29th 2019", password: "password"},
  {first_name: "Adam", last_name: "Godman", email: "adam@gmail.com", biography: "I am 24-year-old junior manager who enjoys watching sports, painting and sailing. I'm kind and friendly, and looking for a new adventure", country_origin: "Germany", hobbies: "Art collecting, storm chasing, sailing, bowling, beekeeping, fitness", current_location: "Sderot", aliyah_date: "April 1st 2020", password: "password"},
  {first_name: "Kenny", last_name: "Morgan", email: "adam@gmail.com", biography: "I recently moved from the UK looking for a better life. It's been a struggle adjusting to life in Israel and hope to find others like me.", hobbies: "Frisbee, Computers, video games, golf, sailing",country_origin: "UK", current_location: "Tel Aviv", aliyah_date: "May 23rd 2020", password: "password"},
  {first_name: "Gary", last_name: "Paley", email: "gary@gmail.com", biography: "New immigrant in Israel looking for others in my situation. It's been difficult adjusting to this new life. What a balagan!", hobbies: "star gazing, tennis, volleyball, fitness, instragram", country_origin: "United States", current_location: "Tel Aviv", aliyah_date: "May 15th 2020", password: "password"},
  {first_name: "Oren", last_name: "Hartov", email: "oren@gmail.com", biography: "Just made Aliyah and looking to join the army. Anyone else out there in a similar situation?", hobbies: "finger painting, exercise, crossfit, soccer, football",country_origin: "United States", current_location: "Haifa", aliyah_date: "June 1st 2020", password: "password"},
  {first_name: "Oren", last_name: "Hartov", email: "oren@gmail.com", biography: "Just made Aliyah and looking to join the army. Anyone else out there in a similar situation?", hobbies: "Football, hiking, long walks, swimming",country_origin: "United States", current_location: "Haifa", aliyah_date: "June 1st 2020", password: "password"},
  {first_name: "Justin", last_name: "Wells", email: "justin@gmail.com", biography: "I recently moved to Israel. I'm 28 years old and I have a PHD in physchology. This is an exciting new adventure and I hope I can find others.", hobbies: "Swimming, football, golf, fitness, instagram",country_origin: "United States", current_location: "Jerusalem", aliyah_date: "June 30th 2020", password: "password"},
  {first_name: "Mario", last_name: "Enrique", email: "mario@gmail.com", biography: "recently made aliyah and I'm overwhelmed by the beauty of Israel and it's people. I really hope I can find others like me. Currently working in Ashdod in the medical establishment", hobbies: "religion, movies, tv shows, netflix, fitness, crossfit, cars",country_origin: "Mexico", current_location: "Jerusalem", aliyah_date: "October 21st, 2017", password: "password"},
  {first_name: "Dan", last_name: "Spigle", email: "dan@gmail.com", biography: "Loving life here in Israel. Made aliyah recently and looking for new friends. Enjoying myself in Raanana absorption center", hobbies: "cars, fitness, video games, movies, star wars",country_origin: "United States", current_location: "raanana", aliyah_date: "July 25th 2020", password: "password"}
])
Image.create!([
  {url: "https://pbs.twimg.com/profile_images/988146044449034241/j3BQbodY.jpg", user_id: 1},
  {url: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png", user_id: 2},
  {url: "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c5b272631358e2a162e6e93%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D824%26cropX2%3D3332%26cropY1%3D72%26cropY2%3D2581", user_id: 3},
  {url: "https://pbs.twimg.com/profile_images/915575197822005250/Km_SoXwO.jpg", user_id: 4},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIGGfjsp6dzjncIKBtVunk3l6r9ajepA5ESA&usqp=CAU", user_id: 5},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSzrDq2usS4TFPaBRSktYLN6eeXmhWVpuyTKA&usqp=CAU", user_id: 6},
  {url: "https://ca-times.brightspotcdn.com/dims4/default/bf943c9/2147483647/strip/true/crop/2048x1075+0+38/resize/1200x630!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F2f%2Fb2%2F31d4f07d4f2a9e19b5dedeeeab73%2Fimg-535dd87e-turbine-la-bio-daniel-miller", user_id: 7},
  {url: "https://apps.jsg.utexas.edu/profiles/files/photos/daniel_stockli_110_thumb.jpg?v=1587352805", user_id: 8},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSBZcEG7iCAjoj8EicAWk2cyNmrsIlT5qfYDA&usqp=CAU", user_id: 9},
  {url: "https://www.dw.com/image/52988736_304.jpg", user_id: 10},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQhG8PRYMJXnJUHZvhsDZ-XJRYP3vZOjef_uw&usqp=CAU", user_id: 11},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRnc0hzOJDkA81uYCeLTWNlWlvNd3xam-kHAQ&usqp=CAU", user_id: 12},
  {url: "https://api.time.com/wp-content/uploads/2020/03/daniel-dae-kim-cornavirus-racism.jpg", user_id: 13},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbJdg51h1gyd5n0xV_whNbr4SexHQgDGCA7Q&usqp=CAU", user_id: 14},
  {url: "https://images.schoolofmotion.com/w950/e6e73bbf-9e5e-4cac-a6eb-aa557fead0e0/Daniel_Hashimoto_Article.jpg", user_id: 15}
])
Event.create!([
  {title: "Painting", description: "I'm an avid painter that would like to help others in a free session! Please come by!", location: "12 dizengoff, Tel Aviv", user_id: 8, date_time: "2020-07-07 09:30:00", image_url: "https://images.saatchiart.com/saatchi/1056127/art/4217579/3287427-RYHJUVVU-7.jpg", address: "12 dizengoff, Tel Aviv"},
  {title: "surfing", description: "Let's hang out and surf some waves!", location: "Tel Aviv beach", user_id: 1, date_time: "2020-01-06 09:30:00", image_url: "", address: ""},
  {title: "book club", description: "meet up over lotr", location: "herlz st, tel aviv", user_id: 3, date_time: "2020-01-06 09:30:00", image_url: "https://ssl.quiksilver.com/static/QS/default/category-assets/marketing-landing/landing/build/img/surf/tiles/surf_featured_1.jpg", address: "Tel Aviv beach"},
  {title: "football", description: "friendly football match. No tackling, just tag football", location: "Tel Aviv, Hayarkon", user_id: 2, date_time: "2020-01-06 09:30:00", image_url: "https://wehco.media.clients.ellingtoncms.com/img/photos/2020/04/08/AP_138500401768_r600x400.jpg?689b03237e9432d372b8e4e059d8b6cfaff1b604", address: "Tel aviv, Hayarkon"},
  {title: "Chess", description: "Any avid chess players? I have a studio with a bunch of chess boards. Would love to maybe start a tournament.", location: "Raanana, 100 ahuza street", user_id: 3, date_time: "2020-01-06 09:30:00", image_url: "https://www.aoe.com/fileadmin/AOE.com/images/main_navigation/blog/Stock_Photos/miscellaneous/Fotolia_94900081_Chess_Pieces_930_590_70.jpg", address: "Raanana, 100 ahuza street"}

])
Conversation.create!([
  {sender_id: 1, recepient_id: 3},
  {sender_id: 2, recepient_id: 1},
  {sender_id: 3, recepient_id: 10},
  {sender_id: 4, recepient_id: 11},
  {sender_id: 5, recepient_id: 12},
  {sender_id: 6, recepient_id: 13},
  {sender_id: 7, recepient_id: 14},
  {sender_id: 8, recepient_id: 15},
  {sender_id: 9, recepient_id: 2},
  {sender_id: 10, recepient_id: 1}
])
Message.create!([
  {user_id: 1, text: "how are you?", conversation_id: 2},
  {user_id: 1, text: "where are you?", conversation_id: 1},
  {user_id: 3, text: "Hi there", conversation_id: 3},
  {user_id: 4, text: "Nice to meet you", conversation_id: 4},
  {user_id: 6, text: "Hello", conversation_id: 5},
  {user_id: 7, text: "How are you?", conversation_id: 3},
  {user_id: 8, text: "Hi", conversation_id: 3},
  {user_id: 9, text: "Hello", conversation_id: 3},
  {user_id: 10, text: "Hey do you want to meet up?", conversation_id: 3},
  {user_id: 12, text: "Hey whats up?", conversation_id: 3}
])
UserEvent.create!([
  {event_id: 1, user_id: 1},
  {event_id: 2, user_id: 3},
  {event_id: 3, user_id: 1},
  {event_id: 4, user_id: 2},
])

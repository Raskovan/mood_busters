# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mood.create(name: "Depressed", score: -2) #1
Mood.create(name: "Anxious", score: -3)  #2
Mood.create(name: "Angry", score: -4)  #3
Mood.create(name: "Manic", score: -6) #4
Mood.create(name: "Bored", score: -1) #5
Mood.create(name: "Overbearing", score: 1) #6
Mood.create(name: "Amused", score: 4) #7
Mood.create(name: "Blissful", score: 5) #8
Mood.create(name: "Plucky", score: 6) #9
Mood.create(name: "Blasé", score: 5) #10

Image.create(name:"https://nextshark-vxdsockgvw3ki.stackpathdns.com/wp-content/uploads/2016/03/carlton.jpg", mood_id: 1 )
Image.create(name: "http://i0.kym-cdn.com/entries/icons/mobile/000/025/086/car.jpg", mood_id: 2)
Image.create(name: "https://i.ytimg.com/vi/g12JlvTtcyM/hqdefault.jpg", mood_id: 3)
Image.create(name: "https://i.pinimg.com/564x/d6/11/d4/d611d43cc3146764a204787ee96fed5a--mariah-carey-scary.jpg", mood_id: 4)
Image.create(name:"https://www.thecenteroregon.com/wp-content/uploads/2015/04/ball.jpg", mood_id: 5)
Image.create(name:"https://camo.envatousercontent.com/aee43943aece0219d1791b4c618560013d94d978/687474703a2f2f77616c6c70617065722d67616c6c6572792e6e65742f696d616765732f726f6d616e7469632d70696374757265732f726f6d616e7469632d70696374757265732d31382e6a7067", mood_id: 6)
Image.create(name:"https://ih1.redbubble.net/image.362294601.3396/mp,550x550,gloss,ffffff,t.3u1.jpg", mood_id: 7)
Image.create(name: "https://www.soscuisine.com/media/images/recettes/very_large/3.jpg?lang=en", mood_id: 8)
Image.create(name: "http://www.tehcute.com/pics/201109/duckling-swimming-big.jpg", mood_id: 9)
Image.create(name: "http://www.buzznet.com/wp-content/uploads/sites/12/2013/04/msg-136689457738.jpg", mood_id: 10)

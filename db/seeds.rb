ActiveRecord::InternalMetadata.create!([
  {key: "environment", value: "development"}
])


Image.create!([
  {name: "http://thefederalist.com/wp-content/uploads/2014/08/5421578112_394202a150_b1-998x665.jpg", mood_id: 14},
  {name: "https://cdn.images.dailystar.co.uk/dynamic/1/photos/301000/936x622/472301.jpg", mood_id: 6},
  {name: "https://media.giphy.com/media/ebcEdgAJNhpYI/giphy.gif", mood_id: 10},
  {name: "https://static.boredpanda.com/blog/wp-content/uploads/2016/12/depression-585ba94107763-png__700.jpg", mood_id: 7},
  {name: "https://static.independent.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2012/11/24/19/pg44-boredom-getty.jpg", mood_id: 4},
  {name: "https://ginadamico.files.wordpress.com/2012/01/ladymonkeyguitarington.jpg", mood_id: 14},
  {name: "https://mymodernmet.com/wp/wp-content/uploads/archive/rnW2qRUD9b7px44DaNPl_okudasanmiguelkindergartenarcugnano1.jpg", mood_id: 13},
  {name: "https://media.townhall.com/townhall/reu/ha/2017/282/2017-10-09T110735Z_1_LYNXMPED980NH_RTROPTP_4_USA-TRUMP.JPG", mood_id: 6},
  {name: "https://orig00.deviantart.net/9b71/f/2012/067/1/9/nicolas_cage_facts_thumb_450x250_23145_by_ecstatic_fantasies-d4s3h7e.jpg", mood_id: 16},
  {name: "http://www.theplaidzebra.com/wp-content/uploads/2015/01/3_writers-destined-to-be-depressed.jpg", mood_id: 7},
  {name: "https://media.giphy.com/media/3oKIPmOqqhYucXs54A/giphy.gif", mood_id: 11},
  {name: "https://vignette.wikia.nocookie.net/psi/images/a/ac/Angry-hugh-jackman.jpg/revision/latest?cb=20151113213317", mood_id: 2},
  {name: "http://media.liveauctiongroup.net/i/13674/13892787_2.jpg?v=8CF55D59930B370", mood_id: 3},
  {name: "https://typeset-beta.imgix.net/lovelace/uploads/315/9b269c10-6467-0133-0c1e-0e34a4cc753d.jpg", mood_id: 8},
  {name: "https://www.uaeusaunited.com/sites/default/files/styles/story_hero_image/public/story-link-images/past-forward-hero_0.jpg?itok=fAO6YtYQ", mood_id: 12},
  {name: "https://www.thephoblographer.com/wp-content/uploads/2017/11/c0155656965823.59c338adf236c-770x513.jpg", mood_id: 15},
  {name: "https://avatar-nct.nixcdn.com/mv/2017/08/19/f/5/d/b/1503120603213_640.jpg", mood_id: 17},
  {name: "https://img00.deviantart.net/1f56/i/2013/231/d/8/the_frustrated_artist_by_blotoangeles-d2a23vb.jpg", mood_id: 9},
  {name: "https://i.ytimg.com/vi/g12JlvTtcyM/hqdefault.jpg", mood_id: 2},
  {name: "https://i.imgflip.com/1qr6wy.jpg", mood_id: 3},
  {name: "https://upload.wikimedia.org/wikipedia/commons/7/70/Rorschach_blot_01.jpg", mood_id: 4},
  {name: "https://pbs.twimg.com/media/DQpb0RHVAAAp8iZ.jpg", mood_id: 5},
  {name: "http://assets.teamrock.com/image/64a41f6f-01a6-4ab4-b5cc-e5c3922d17e3?w=800", mood_id: 11},
  {name: "https://artsy-media-uploads.s3.amazonaws.com/Yj0M32R7lG6Tf0X0V2nc1g%2Fcustom-Custom_Size___edvard-munch-the-scream-1893.jpg", mood_id: 5},
  {name: "https://nerdist.com/wp-content/uploads/2014/10/jeff-goldblum-ge-hed-2014-970x545.jpg", mood_id: 8},
  {name: "https://cdn.vox-cdn.com/thumbor/-khg_S_-tf3eS4XqudtTqK2JwqM=/69x0:856x525/1200x800/filters:focal(69x0:856x525)/cdn.vox-cdn.com/uploads/chorus_image/image/50263513/Screen_Shot_2016-08-01_at_12.34.21_PM.0.0.png", mood_id: 9},
  {name: "https://imgflip.com/s/meme/Good-Fellas-Hilarious.jpg", mood_id: 10},
  {name: "https://media.giphy.com/media/sl0ko2YmprL5m/giphy.gif", mood_id: 12},
  {name: "http://www.tehcute.com/pics/201109/duckling-swimming-big.jpg", mood_id: 13},
  {name: "https://media.giphy.com/media/FQKyQYVeGJw3e/giphy.gif", mood_id: 15},
  {name: "https://media.giphy.com/media/6qLjl0JILCUrm/giphy.gif", mood_id: 17},
  {name: "https://media.giphy.com/media/JSEDFfXtKbo64/giphy.gif", mood_id: 16}
])
Mood.create!([
  {name: "Angry", score: -8},
  {name: "Annoyed", score: -5},
  {name: "Apathetic", score: -1},
  {name: "Manic", score: -6},
  {name: "Cranky", score: -4},
  {name: "Depressed", score: -7},
  {name: "Envious", score: -2},
  {name: "Frustrated", score: -3},
  {name: "Amused", score: 5},
  {name: "Blissful", score: 4},
  {name: "Blasé", score: 1},
  {name: "Plucky", score: 6},
  {name: "Content", score: 2},
  {name: "Dreamy", score: 3},
  {name: "Ecstatic", score: 8},
  {name: "Energetic", score: 7}
])

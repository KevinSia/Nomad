# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@nomad.com', password: 'nomad', first_name: 'admin')

quest_1 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_1.activities.create(title:"The Louvre",description:"One of the world’s most authoritative museums, the Louvre's collection.",estimated_time:'4',location:'The Louvre',price:'180',references:"https://www.tiqets.com/en/paris-c66746/louvre-museum-skip-the-line-p973698?gclid=CjwKEAjw1Iq6BRDY_tK-9OjdmBESJABlzoY7h3pYHDZ0QLRok5riwTjVn6osM0d6ZNKF9vfRVhNUEBoChcvw_wcB",quest_id:1)
quest_1.activities.create(title:"Eiffel Tower Tour by Night",description:"Cap off a perfect day in Paris with unforgettable views from the Eiffel Tower.",estimated_time:'3',location:'Eiffel Tower',price:'180',references:"http://www.viator.com/tours/Paris/Skip-the-Line-Eiffel-Tower-Tour-by-Night/d479-3731EIFFELNIGHT",quest_id:1)
quest_1.activities.create(title:'Notre Dame Catherdral Paris',description:"It was one of the very first Gothic cathedrals, and its construction took place throughout the Gothic period.",estimated_time:'3',location:'Notre Dame Cathedral Paris',price:'150',references:'http://www.notredamecathedralparis.com',quest_id:1)
quest_1.activities.create(title:'Latin Quarter-St. Michel',description:"Famous for its Bistros, nightlife and shopping avenues.",estimated_time:'2',location:'Latin Quarter - St. Michel',price:'0',references:'http://www.aparisguide.com/latin-quarter/',quest_id:1)
quest_1.activities.create(title:'Champs-Elysées',description:"One of The most famous avenue in the world. Two kilometers long and seventy meters wide.",estimated_time:'5',location:'Champs-Elysées',price:'0',references:'http://www.aviewoncities.com/paris/champselysees.htm',quest_id:1)

quest_2 = Quest.create(title: 'Escape to Seoul Nature with your loved ones',duration: '4',country:'Korea',city:'Seoul',category:'Family',description:'Back to nature in Seoul, Korea',user_id:1)
quest_2.activities.create(title:'Darangee Village',description:"Darangee Village features an extraordinary sight of countless tiny fields against the open sea.",estimated_time:'4',location:'Darangee Village, Seoul',price:'100',references:'http://wcpadventure.com/travel-in-korea/how-to-get-to/seoul-to-darangee-village/',quest_id:1)
quest_2.activities.create(title:'Jeungdo Salt Farm',description:"This treasure island\ is famous for its clear seawater, soft beach, and salt farms.",estimated_time:'3',location:'South Jeolla',price:'50',references:'http://blog.roycruz.com/?p=1452',quest_id:1)
quest_2.activities.create(title:'Seongsan Sunrise Peak',description:"A UNESCO world heritage site. Best known for the magnificent sight of the sun rising over it.",estimated_time:'3',location:'Jeju Island',price:'50',references:'http://travel.cnn.com/seoul/visit/how-visit-jeju-island-dime-169244/',quest_id:1)
quest_2.activities.create(title:'Upo Marsh',description:"At 2,314 kilometers squared, Upo Marsh is the largest inland wetland in Korea and thrice the size of Yeouido.",estimated_time:'4',location:' Changnyeong-gun County',price:'100',references:'http://whc.unesco.org/en/tentativelists/5576/',quest_id:1)

quest_3 = Quest.create(title: 'Reignite your Love - Japan',duration: '6',country:'Japan',city:'Tokyo',category:'Couple',description:'Rekindle your passion in the city of lights and culture',user_id:1)
quest_3.activities.create(title:'Sumida river Bus Ride',description:"Take a romanic and exciting Sumida River ride on the Himiko.",estimated_time:'4',location:'Asakusa',price:'100',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-an-exciting-water-bus-ride-on-the-sumida-river-tokyo/5216',quest_id:1)
quest_3.activities.create(title:'Tokyo Bay Night Cruise',description:"Go on a romantic Tokyo Bay night cruise!",estimated_time:'3',location:'Tokyo Bay',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-bay-night-cruise/2742',quest_id:1)
quest_3.activities.create(title:'See Sunrise from Hot Air Balloon',description:"Float elegantly through the sky while watching the amazing rural landscape of rice fields below.",estimated_time:'3',location:'Tokyo',price:'250',references:'https://www.govoyagin.com/activities/japan-tokyo-see-the-sunrise-from-a-hot-air-balloon-just-outside-tokyo/4342',quest_id:1)
quest_3.activities.create(title:'Ginza & Tsukiji Running ',description:"Let's run together in the center of Tokyo to see Ginza, Tsukiji and Nippon bridge!",estimated_time:'4',location:'Ginza',price:'80',references:'https://www.govoyagin.com/activities/japan-tokyo-lets-go-running-in-the-center-of-tokyo-ginza-and-tsukiji/1888',quest_id:1)
quest_3.activities.create(title:'Hamarikyu Gardens',description:"Spend a pleasant afternoon in a small group tour visiting a beautiful garden in central Tokyo.",estimated_time:'2',location:'15 mins from Tsukiji Market',price:'150',references:'https://www.govoyagin.com/activities/japan-tokyo-stroll-a-beautiful-japanese-garden-and-taste-sake-in-tokyo/4231',quest_id:1)
quest_3.activities.create(title:'Kabukicho and Shinjuku Golden Gai Night Tour',description:"These areas have a very special and unique atmosphere than the usual.",estimated_time:'4',location:'Kabukicho',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-kabukicho-and-shinjuku-golden-gai-night-tour/2815',quest_id:1)

quest_3.activities.create(title:'Minakami Onsen hot spring!',description:"One of the nearest hot spring resorts to Tokyo.")
quest_3.activities.create(title:'Tokyo panoramic night bus tour with dinner',description:"This is a bus tour that will take you to the best spots to enjoy Tokyo by night. ",estimated_time:'3',location:'Tokyo',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-a-tokyo-panoramic-night-bus-tour-with-dinner/6267',quest_id:1)
quest_3.activities.create(title:'Historical rickshaw tour in Asakusa with Ebisuya',description:"Asakusa is one of the oldest towns in Tokyo and has flourished since the founding of Sensoji Temple in 628 AD.",estimated_time:'',location:'Asakusa',price:'180',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-a-historical-rickshaw-tour-in-asakusa-with-ebisuya/3855',quest_id:1)
quest_3.activities.create(title:'Rainbow Bridge ',description:"Walk the Rainbow Bridge, an example of modern engineering at its best.",estimated_time:'4',location:'Tamachi Station',price:'150',references:'https://www.govoyagin.com/activities/japan-tokyo-walk-tokyo-famous-rainbow-bridge-for-an-odaiba-photo-tour/4164',quest_id:1)
quest_3.activities.create(title:'Wear Yukata and Go See the Fireworks',description:"It's time to go to the firework festivals in Japan! Have you heard of the Yukata before?",estimated_time:'5',location:'Tokyo',price:'280',references:'https://www.govoyagin.com/activities/japan-tokyo-wear-the-yukata-and-go-see-the-fireworks-with-the-locals/2401',quest_id:1)
quest_3.activities.create(title:'Meguro River Night cruising ',description:"This tour will take you to cruise along the Meguro River, which is one of the famous spots for cherry blossoms viewing.",estimated_time:'3',location:'Meguro River',price:'350',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-meguro-river-night-cruising-with-world-cuisine-tokyo/4730',quest_id:1)

quest_4 = Quest.create(title: 'Backpackers on the go in Costa Rica',duration: '3',country:'Costa Rica',city:'San Jose',category:'Backpack',description:'Unleash the wanderlust in you',user_id:1)
quest_4.activities.create(title:'Tortuguero National Park',description:"This park on the Caribbean coast is regarded as one of the most important breeding grounds for the endangered green turtle.",estimated_time:'4',location:'Tortuguero',price:'0',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/tortuguero/',quest_id:1)
quest_4.activities.create(title:'San Jose',description:"Costa Rica’s capital is located in the center of the country making it a great hub.",estimated_time:'5',location:'San Jose',price:'40',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/san-jose/',quest_id:1)
quest_4.activities.create(title:'Puerto Viejo',description:"Located on the Caribbean coast, this city is popular with young people and backpackers because of its great beaches, surf, and party atmosphere.",estimated_time:'5',location:'Puerto Viejo',price:'0',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/puerto-viejo/',quest_id:1)
quest_4.activities.create(title:'Puerto Viejo - Learn to Surf',description:"Puerto Viejo has a lot of waves and lots of places to learn to surf.",estimated_time:'5',location:'Puerto Viejo',price:'60',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/puerto-viejo/',quest_id:1)

quest_5 = Quest.create(title: 'Some Things are best done locally in KL',duration: '2',country:'Malaysia',city:'Kuala Lumpur',category:'Family',description:'Family-friendly activities in this concrete jungle',user_id:1)
quest_5.activities.create(title:'Aquarium KLCC',description:"It is an oceanarium showcasing over 5,000 different exhibits of aquatic and land-bound creatures in the heart of Kuala Lumpur's city centre.",estimated_time:'3',location:'KLCC',price:'35',references:'http://aquariaklcc.com',quest_id:1)
quest_5.activities.create(title:'Suria KLCC',description:"Suria KLCC shopping centre is an imposing six-storey building planted at the foot of the Petronas Twin Towers in the Kuala Lumpur city centre.",estimated_time:'3',location:'KLCC',price:'0',references:'http://www.kuala-lumpur.ws/klshopping/suria-mall-klcc.htm',quest_id:1)
quest_5.activities.create(title:'Petaling Street',description:"A well-known shopping district. The most happening night market in the city.",estimated_time:'3',location:'Petaling Street',price:'0',references:'http://www.kuala-lumpur.ws/klareas/chinatown_petaling.htm',quest_id:1)
quest_5.activities.create(title:'Paviliion Shopping center',description:"Pavilion Kuala Lumpur consists of six shopping precincts and a row of street-front boutiques",estimated_time:'3',location:'Bukit Bintang',price:'0',references:'http://www.pavilion-kl.com',quest_id:1)

quest_6 = Quest.create(title: 'Soul-searching in Bali',duration: '3',country:'Indonesia',city:'Bali',category:'Friends',description:'Rejuvenate your soul in Bali',user_id:1)
quest_6.activities.create(title:'Kuta Beach',description:"A good start for surfers is Kuta beach. Awesome waves!",estimated_time:'4',location:'Kuta Beach',price:'80',references:'http://indonesia.travel/sites/site/73/bali?utm_source=google&utm_medium=cpc&utm_campaign=MY&gclid=CjwKEAjw1Iq6BRDY_tK-',quest_id:1)
quest_6.activities.create(title:'Tanah Lot',description:"Tanah Lot must be the island's most iconic temple; perched on top of a huge rock, and surrounded by the sea with waves constantly crashing on to its base. ",estimated_time:'3',location:'Tanah Lot',price:'30',references:'http://www.bali-indonesia.com/attractions/top-ten/',quest_id:1)
quest_6.activities.create(title:'Ubud Art Market',description:"Here you can find beautiful silk scarves, lightweight shirts, handmade woven bags, baskets or hats; statues, kites and many other hand-crafted goods.",estimated_time:'3',location:'Ubud',price:'0',references:'http://www.bali-indonesia.com/attractions/top-ten/top-ten-6.htm',quest_id:1)
quest_6.activities.create(title:'Besakih Temple',description:"Besakih Temple, also known as the 'mother temple' of Bali sits on the slopes of Mount Agung, at a lofty 1,000m.",estimated_time:'3',location:'Mt.Agung',price:'30',references:'http://www.bali-indonesia.com/attractions/top-ten/top-ten-3.htm',quest_id:1)
quest_6.activities.create(title:'Tegallalang Rice Terraces',description:"Ubud is famous for its scenic expanses of rice fields. ",estimated_time:'3',location:'Ubud',price:'45',references:'https://www.tripadvisor.co.uk/Guide-g297555-k1096-Sharm_El_Sheikh_South_Sinai_Red_Sea_and_Sinai.html',quest_id:1)
quest_6.activities.create(title:'Ubud Monkey Forest',description:"Ubud Monkey Forest is one of Bali’s several grey long-tailed macaque-inhabited forests and perhaps the best known.",estimated_time:'3',location:'Ubud',price:'35',references:'http://www.bali-indonesia.com/attractions/top-ten/top-ten-5.htm',quest_id:1)

quest_7 = Quest.create(title: 'Discover the Mysterious Egypt',duration: '3',country:'Egypt',city:'Cairo',category:'Couple',description:'Immerse in the mysterious vibe of Egypt with your better half!',user_id:1)
quest_7.activities.create(title:"Na'ama Bay",description:"The warm water here is blue. You heard me, blue. ",estimated_time:'4',location:'Naama Bay',price:'50',references:'https://www.tripadvisor.co.uk/Guide-g297555-k1096-Sharm_El_Sheikh_South_Sinai_Red_Sea_and_Sinai.html',quest_id:1)
quest_7.activities.create(title:'Pomodoro',description:"The exterior of this temple projects sheer majestic elegance inspired by the Tang dynasty.",estimated_time:'2',location:'Pomodoro',price:'65',references:'https://www.tripadvisor.co.uk/Guide-g297555-k1096-Sharm_El_Sheikh_South_Sinai_Red_Sea_and_Sinai.html',quest_id:1)

quest_8 = Quest.create(title: 'Be in awe with the beauty of Bhutan',duration: '3',country:'Bhutan',city:'Bhutan',category:'Couple',description:'Explore the beauty of nature in exotic Bhutan',user_id:1)


quest_9 = Quest.create(title: 'Blue waters Gentle breeze in Boracay',duration: '4',country:'Philippines',city:'Boracay',category:"",description:'Friends',user_id:1)


quest_10 = Quest.create(title: 'Santorini - the most romantic destination',duration: '5',country:'Greece',city:'Santorini',category:'Couple',description:'Bring your loved one to the most romantic destination in the world',user_id:1)


quest_11 = Quest.create(title: 'White Christmas in Sweden',duration: '5',country:'Sweden',city:'Stockholm',category:'Couple',description:'White Christmas with snow',user_id:1)

quest_13 = Quest.create(title: 'Roadtrip in New Zealand',duration: '4',country:'New Zealand',city:'Wellington',category:'Backpack',description:'Walk,cycle,drive to the best roadtrip of your life in New Zealand',user_id:1)
quest_14 = Quest.create(title: 'Cultural trip in Istanbul',duration: '4',country:'Turkey',city:'Instanbul',category:'Backpack',description:'Romantic couple trip',user_id:1)
quest_15 = Quest.create(title: 'Unleash your innerchild in Disneyland',duration: '6',country:'USA',city:'Florida',category:'Family',description:'Unleash your innerchild and immerse in the wonderful world of Disneyland',user_id:1)
quest_16 = Quest.create(title: 'Angkor Wat & other sides of Cambodia',duration: '4',country:'Cambodia',city:'Phnom Penh',category:'Backpack',description:'See the 7 wonders of the world and explore Cambodia',user_id:1)
quest_17 = Quest.create(title: 'Fancy a stay in an Igloo? Finland',duration: '4',country:'Finland',city:'Helsinki',category:'Friends',description:'Experience the life of an eskimo with your buddies!',user_id:1)
quest_18 = Quest.create(title: 'Hidden side of Argentina',duration: '4',country:'Argentina',city:'Buenos Aires',category:'Friends',description:'Explore the unknown side of Argentina',user_id:1)
quest_19 = Quest.create(title: 'Eat, Pray, Love in Bali',duration: '4',country:'Indonesia',city:'Bali',category:'Backpack',description:'Find yourself from the tranquility of Bali',user_id:1)
quest_20 = Quest.create(title: "Shop to your heart's content in Bangkok",duration: '3',country:'Thailand',city:'Bangkok',category:'Friends',description:'Awesome shopping trip',user_id:1)
quest_21 = Quest.create(title: 'The Best of Bolivia',duration: '4',country:'Bolivia',city:'La Paz',category:'Family',description:'Ideal family trip to explore the beauty of Bolivia',user_id:1)
quest_22 = Quest.create(title: 'UNESCO:Halong Bay, Vietnam',duration: '3',country:'Vietnam',city:'Halong Bay',category:'Couple',description:'Blue waters ',user_id:1)
quest_23 = Quest.create(title: 'Relaxing Beach Holiday in Maldives',duration: '3',country:'France',city:'Paris',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_24 = Quest.create(title: "Honeymoon in Croatia",duration: '4',country:'Croatia',city:'Zagreb',category:'Couple',description:'Honeymoon in Croatia',user_id:1)
quest_25 = Quest.create(title: 'Slow down your pace in BoraBora',duration: '3',country:'French Polynesia',city:'BoraBora',category:'Couple',description:'Take a break and catch a breather in the beautiful Bora Bora',user_id:1)
quest_26 = Quest.create(title: 'Soul in Seoul',duration: '4',country:'Korea',city:'Seoul',category:'Friends',description:'Caught the K-pop wave? Visit Seoul to experience it.',user_id:1)
quest_27 = Quest.create(title: 'Splendid Summer in Norway',duration: '5',country:'Norway',city:'Oslo',category:'Friends',description:'Perfect Summer Break in Norway',user_id:1)
quest_28 = Quest.create(title: 'Wild beauty of the Scottish Highlands and Isle of Skye',duration: '3',country:"Scotland",city:'Edinburgh',category:'Family',description:'Immerse yourself in the wild beauty of the Scottish Highlands and Isle of Skye',user_id:1)
quest_29 = Quest.create(title: 'Luxury Holiday in Spain',duration: '3',country:'Spain',city:'Madrid',category:'Couple',description:'Pamper your loved one to a luxury holiday in Spain',user_id:1)
quest_30 = Quest.create(title: 'Arts & Life in Venice',duration: '3',country:'Italy',city:'Venice',category:'Friends',description:'Explore the arts scene in Venice',user_id:1)


Payment.create(quest_id: 1, user_id: 1, price: 100)
Payment.create(quest_id: 2, user_id: 2, price: 200)

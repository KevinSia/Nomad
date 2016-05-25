# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@nomad.com', password: 'nomad', first_name: 'admin')

quest_1 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_1.activities.create(day:'1',title:"The Louvre",description:"One of the world’s most authoritative museums, the Louvre's collection ranges from arts and crafts of ancient civilizations right up to the middle of the 19th century",estimated_time:'4',location:'The Louvre',price:'180',references:"https://www.tiqets.com/en/paris-c66746/louvre-museum-skip-the-line-p973698?gclid=CjwKEAjw1Iq6BRDY_tK-9OjdmBESJABlzoY7h3pYHDZ0QLRok5riwTjVn6osM0d6ZNKF9vfRVhNUEBoChcvw_wcB",quest_id:1)
quest_1.activities.create(day:'1',title:"Eiffel Tower Tour by Night",description:"Cap off a perfect day in Paris with unforgettable views from the Eiffel Tower. Take a short stroll to the base of the tower and skip to the front of the long elevator queue, saving precious viewing time. After a quick ride up to the second-floor observation deck, take in mesmerizing panoramic views of the city through large picture windows. See if you can spot your favorite landmarks among the glimmering landscape, such as the Arc de Triomphe, Notre-Dame Cathedral, Sacré Coeur Basilica, Musée d’Orsay and Champs-Elysées. Watch traffic snaking through the city’s famous boulevards, and look for the glow of countless twinkling lights that adorn the tower itself.",estimated_time:'3',location:'Eiffel Tower',price:'180',references:"http://www.viator.com/tours/Paris/Skip-the-Line-Eiffel-Tower-Tour-by-Night/d479-3731EIFFELNIGHT",quest_id:1)
quest_1.activities.create(day:'2',title:'Notre Dame Catherdral Paris',description:"Gothic cathedral located in the fourth arrondissement of Paris, France,with its sculptures and stained glass windows show the heavy influence of naturalism, unlike that of earlier Romanesque architecture. It was one of the very first Gothic cathedrals, and its construction took place throughout the Gothic period.",estimated_time:'3',location:'Notre Dame Cathedral Paris',price:'150',references:'http://www.notredamecathedralparis.com',quest_id:1)
quest_1.activities.create(day:'2',title:'Latin Quarter - St. Michel',description:"Quartier Latin--- the name alone evokes images of bohemian Paris at its height. In spite of its indisputable gentrification and the loss of its former identity, the myriad streets surrounding what was the left bank's true student and intellectual center continues to attract tourists and Parisians who hope to discover, or possibly resurrect, a little of that electric sense of change we read of in Camus, Sartre and Beckett. Famous for its Bistros, nightlife and shopping avenues.",estimated_time:'2',location:'Latin Quarter - St. Michel',price:'0',references:'http://www.aparisguide.com/latin-quarter/',quest_id:1)
quest_1.activities.create(day:'3',title:'Champs-Elysées',description:"One of The most famous avenue in the world. Two kilometers long and seventy meters wide. At its western end the street is bordered by cinemas, theaters, On the opposite end, the street is bordered by the Jardins des Champs-Elysées, beautifully arranged gardens with fountains and some grand buildings including the Grand and Petit Palais at the southern side and the Elysée at its northern side. cafés and luxury shops.",estimated_time:'5',location:'Champs-Elysées',price:'0',references:'http://www.aviewoncities.com/paris/champselysees.htm',quest_id:1)


quest_2 = Quest.create(title: 'Escape to Seoul Nature with your loved ones',duration: '4',country:'Korea',city:'Seoul',lower_price:'300',upper_price:'600',category:'Family',description:'Back to nature in Seoul, Korea',user_id:1)
quest_2.activities.create(day:'1',title:'Darangee Village',description:"Darangee Village, a small well-preserved village in the southernmost area of west Namhae-gun, features an extraordinary sight of countless tiny fields (over 100 levels) on a steep mountain slope against the open sea.",estimated_time:'4',location:'Darangee Village, Seoul',price:'100',references:'http://wcpadventure.com/travel-in-korea/how-to-get-to/seoul-to-darangee-village/',quest_id:1)
quest_2.activities.create(day:'1',title:'Jeungdo Salt Farm',description:"This treasure island (artifacts from the Song Dynasty have actually been found at the bottom of the sea) is famous for its clear seawater, soft beach, and salt farms. The magical sight of huge salt farms is not the only spectacle that can be found here; the mud flat leisure town allows tourists to experience and observe the marine life of the mud flat.",estimated_time:'3',location:'South Jeolla',price:'50',references:'http://blog.roycruz.com/?p=1452',quest_id:1)
quest_2.activities.create(day:'2',title:'Seongsan Sunrise Peak',description:"Hydrovolcanic eruptions formed this majestic volcanic crater 5,000 years ago on Jeju Island. A UNESCO world heritage site, the peak is famous for many things, including numerous rare plant species, but is best known for the magnificent sight of the sun rising over it (hence the name). The climb up the peak’s northwest side ridge (its other sides are steep cliffs) to the 180-meter highest point takes 30 minutes.",estimated_time:'3',location:'Jeju Island',price:'50',references:'http://travel.cnn.com/seoul/visit/how-visit-jeju-island-dime-169244/',quest_id:1)
quest_2.activities.create(day:'2',title:'Upo Marsh',description:"At 2,314 kilometers squared, Upo Marsh is the largest inland wetland in Korea and thrice the size of Yeouido. Formed over 140 million years ago, the marsh is home to 1,500 plants and animals, some of which are endangered species. Visitors can bike or walk around this beautiful natural swamp, where migratory birds are known for flying low. ",estimated_time:'4',location:' Changnyeong-gun County',price:'100',references:'http://whc.unesco.org/en/tentativelists/5576/',quest_id:1)


quest_3 = Quest.create(title: 'Reignite your Love - Japan',duration: '6',country:'Japan',city:'Tokyo',lower_price:'2000',upper_price:'3000',category:'Couple',description:'Rekindle your passion in the city of lights and culture',user_id:1)
quest_3.activities.create(day:'1',title:'Sumida river Bus Ride',description:"Take a romanic and exciting Sumida River ride on the Himiko or the Hotaluna, the futuristic water buses running from traditional Asakusa to the shops, attractions and entertainment spots on amazing Odaiba Seaside Park.",estimated_time:'4',location:'Asakusa',price:'100',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-an-exciting-water-bus-ride-on-the-sumida-river-tokyo/5216',quest_id:1)
quest_3.activities.create(day:'1',title:'Tokyo Bay Night Cruise',description:"Go on a romantic Tokyo Bay night cruise! This is the perfect way to end your day, and see the night view of Tokyo. Why not enjoy the special holiday season cruises around Christmas and New Year?",estimated_time:'3',location:'Tokyo Bay',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-bay-night-cruise/2742',quest_id:1)
quest_3.activities.create(day:'2',title:'See Sunrise from Hot Air Balloon',description:"How about flying with us in a hot air balloon during the beautiful sunrise? Float elegantly through the sky while watching the amazing rural landscape of rice fields below. You can also see Mt Fuji to the west and Tokyo Sky Tree to the south!",estimated_time:'3',location:'Tokyo',price:'250',references:'https://www.govoyagin.com/activities/japan-tokyo-see-the-sunrise-from-a-hot-air-balloon-just-outside-tokyo/4342',quest_id:1)
quest_3.activities.create(day:'2',title:'Ginza & Tsukiji Running ',description:"Let's run together in the center of Tokyo to see Ginza, Tsukiji and Nippon bridge! The run will cover about 12-13 km, and we will have a 2 hour break in between. We will run past Tokyo station, rivers, harbors, Shinto shrines, shopping streets and experience the vibrant charm of Tokyo's downtown. Everybody, from tourists visiting Tokyo for the first time to people living and working in Tokyo, is welcomed to join us on this run!Let's experience running through the center of Tokyo, full of interesting discoveries and surprises!",estimated_time:'4',location:'Ginza',price:'80',references:'https://www.govoyagin.com/activities/japan-tokyo-lets-go-running-in-the-center-of-tokyo-ginza-and-tsukiji/1888',quest_id:1)
quest_3.activities.create(day:'3',title:'Hamarikyu Gardens',description:"Spend a pleasant afternoon in a small group tour visiting a beautiful garden in central Tokyo and then enjoying an informative sake tasting in a fun, casual setting.",estimated_time:'2',location:'15 mins from Tsukiji Market',price:'150',references:'https://www.govoyagin.com/activities/japan-tokyo-stroll-a-beautiful-japanese-garden-and-taste-sake-in-tokyo/4231',quest_id:1)
quest_3.activities.create(day:'3',title:'Kabukicho and Shinjuku Golden Gai Night Tour',description:"Your guide book might say Kabukicho and Shinjuku Golden Gai are not safe areas, and usually Travel agencies don't do guides here. But these areas have a very special and unique atmosphere and it's a much safer place now than it once used to be.",estimated_time:'4',location:'Kabukicho',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-kabukicho-and-shinjuku-golden-gai-night-tour/2815',quest_id:1)
quest_3.activities.create(day:'4',title:'Minakami Onsen hot spring!',description:"Located along the Tone River coming down from the Tanigawa mountain range, Minakami Onsen in Gunma is one of the nearest hot spring resorts to Tokyo. Many famous literary figures, such as Osamu Dazai, Bokusui Wakayama, and Hakushu Kitahara visited here and loved its abundant nature and hot spring baths. 
",estimated_time:'4',location:'Tanigawa',price:'250',references:'https://www.govoyagin.com/activities/japan-gunma-warm-your-body-and-soul-in-minakami-onset-hot-spring/4122',quest_id:1)
quest_3.activities.create(day:'4',title:'Tokyo panoramic night bus tour with dinner',description:"This is a bus tour that will take you to the best spots to enjoy Tokyo by night. ",estimated_time:'3',location:'Tokyo',price:'200',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-a-tokyo-panoramic-night-bus-tour-with-dinner/6267',quest_id:1)
quest_3.activities.create(day:'5',title:'Historical rickshaw tour in Asakusa with Ebisuya',description:"Asakusa is one of the oldest towns in Tokyo and has flourished since the founding of Sensoji Temple in 628 AD. The temple is located at the center of the town and is surrounded by many traditional downtown streets and areas. Our rickshaws mainly travel around the surrounding downtown areas, and we introduce guests to the history of the town, buildings, shops, and restaurants, as well as to other fun facts. ",estimated_time:'',location:'Asakusa',price:'180',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-a-historical-rickshaw-tour-in-asakusa-with-ebisuya/3855',quest_id:1)
quest_3.activities.create(day:'5',title:'Rainbow Bridge ',description:"Walk the Rainbow Bridge, an example of modern engineering at its best.",estimated_time:'4',location:'Tamachi Station',price:'150',references:'https://www.govoyagin.com/activities/japan-tokyo-walk-tokyo-famous-rainbow-bridge-for-an-odaiba-photo-tour/4164',quest_id:1)
quest_3.activities.create(day:'6',title:'Wear Yukata and Go See the Fireworks',description:"Summer has come! It's time to go to the firework festivals in Japan! Have you heard of the Yukata before? It is one of Japan's traditional clothing, which is a casual version of the Kimono made of cotton, perfect for the summer weather. Many people go to the summer festivals wearing the Yukata, especially the girls, which is a perfect way to start off the summer season.",estimated_time:'5',location:'Tokyo',price:'280',references:'https://www.govoyagin.com/activities/japan-tokyo-wear-the-yukata-and-go-see-the-fireworks-with-the-locals/2401',quest_id:1)
quest_3.activities.create(day:'6',title:'Meguro River Night cruising ',description:"This tour will take you to cruise along the Meguro River, which is one of the famous spots for cherry blossoms viewing. During the cherry blossoms season, a lot of people surge into the bank of Meguro River that has 800 cherry blossom trees lining along the river.",estimated_time:'3',location:'Meguro River',price:'350',references:'https://www.govoyagin.com/activities/japan-tokyo-enjoy-meguro-river-night-cruising-with-world-cuisine-tokyo/4730',quest_id:1)

quest_4 = Quest.create(title: 'Backpackers on the go in Costa Rica',duration: '3',country:'Costa Rica',city:'San Jose',lower_price:'100',upper_price:'500',category:'Backpack',description:'Unleash the wanderlust in you',user_id:1)
quest_4.activities.create(day:'1',title:'Tortuguero National Park',description:"This park on the Caribbean coast is regarded as one of the most important breeding grounds for the endangered green turtle.  It also helps to protect manatees, sloths and various species of monkey. Visit at night to catch the turtles laying their eggs on the beach. It’s very out of the way and hard to get to. There isn’t much there but if you like jungles, birds, and quiet this is a must see.",estimated_time:'4',location:'Tortuguero',price:'0',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/tortuguero/',quest_id:1)
quest_4.activities.create(day:'1',title:'San Jose',description:"Costa Rica’s capital is located in the center of the country making it a great hub. Overall though, the city only requires a few days. It’s sort of gritty and there’s not a whole lot to do. Visit the Museum of Contemporary Art & Design to check out the future of Costa Rican art or to the magnificent Teatro Nacional to take in its décor or to see the orchestra if your budget allows. The history museum located in the town center is the highlight of a visit here.",estimated_time:'5',location:'San Jose',price:'40',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/san-jose/',quest_id:1)
quest_4.activities.create(day:'2',title:'Puerto Viejo',description:"Located on the Caribbean coast, this city is popular with young people and backpackers because of its great beaches, surf, and party atmosphere. The town is very lively, and you’ll find something going on every night. For those looking for a quieter place, there are many tranquil beach hotels around. It was one of my favorite towns in the country because its Rasta influence made it very different than the rest of Costa Rica.",estimated_time:'5',location:'Puerto Viejo',price:'0',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/puerto-viejo/',quest_id:1)
quest_4.activities.create(day:'2',title:'Puerto Viejo - Learn to Surf',description:"Puerto Viejo has a lot of waves and lots of places to learn to surf. In fact, most travelers come here to surf because the waves are world renowned. If you never learned but always wanted to try and Australia, Hawaii, or Bali seem too far, this is your best place to in the region to learn.",estimated_time:'5',location:'Puerto Viejo',price:'60',references:'http://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/puerto-viejo/',quest_id:1)


quest_5 = Quest.create(title: 'Some Things are best done locally in KL',duration: '2',country:'Malaysia',city:'Kuala Lumpur',lower_price:'200',upper_price:'300',category:'Family',description:'Family-friendly activities in this concrete jungle',user_id:1)
quest_5.activities.create(day:'1',title:'Aquarium KLCC',description:"Aquawalk Sdn. Bhd. own and manage Aquaria KLCC, a world-class aquarium that showcases marine life and animals from Malaysia and around the world. It is an oceanarium showcasing over 5,000 different exhibits of aquatic and land-bound creatures over a sprawling 60,000 square foot space right in the heart of Kuala Lumpur's city centre.",estimated_time:'3',location:'KLCC',price:'35',references:'http://aquariaklcc.com',quest_id:1)
quest_5.activities.create(day:'1',title:'Suria KLCC',description:"Suria KLCC shopping centre is an imposing six-storey building planted at the foot of the Petronas Twin Towers in the Kuala Lumpur city centre.",estimated_time:'3',location:'KLCC',price:'0',references:'http://www.kuala-lumpur.ws/klshopping/suria-mall-klcc.htm',quest_id:1)
quest_5.activities.create(day:'2',title:'Petaling Street',description:"Known to be a shopper’s haven, albeit in a different league when compared to its more glamourous counterparts, Bukit Bintang and KLCC. A well-known shopping district, the whole area transforms into a lively and vibrant night market after dark, with hundreds of stalls selling all kinds of stuff at dirt-cheap prices, making it the most happening night market in the city.",estimated_time:'3',location:'Petaling Street',price:'0',references:'http://www.kuala-lumpur.ws/klareas/chinatown_petaling.htm',quest_id:1)
quest_5.activities.create(day:'2',title:'Paviliion Shopping center',description:"Pavilion Kuala Lumpur consists of six shopping precincts and a row of street-front boutiques",estimated_time:'3',location:'Bukit Bintang',price:'0',references:'http://www.pavilion-kl.com',quest_id:1)


quest_6 = Quest.create(title: 'Backpack around Kuala Lumpur',duration: '3',country:'Malaysia',city:'Kuala Lumpur',lower_price:'100',upper_price:'150',category:'Backpack',description:'Backpack around Kuala Lumpur',user_id:1)
quest_6.activities.create(day:'1',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_6.activities.create(day:'1',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_6.activities.create(day:'2',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_6.activities.create(day:'2',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_6.activities.create(day:'3',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_6.activities.create(day:'3',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)


quest_7 = Quest.create(title: 'Backpack around Kuala Lumpur',duration: '2',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_7.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_7.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_7.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_7.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_7.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)

quest_8 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_8.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_8.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_8.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_8.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_8.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)

quest_9 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_9.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_9.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_9.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_9.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_9.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)

quest_10 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_10.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_10.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_10.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_10.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_10.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)

quest_11 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_11.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_11.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_11.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_11.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_11.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)

quest_12 = Quest.create(title: 'Love in The Air - Paris',duration: '3',country:'France',city:'Paris',lower_price:'600',upper_price:'800',category:'Couple',description:'Romantic couple trip',user_id:1)
quest_12.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_12.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_12.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_12.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
quest_12.activities.create(day:'',title:'',description:"",estimated_time:'',location:'',price:'',references:'',quest_id:1)
     
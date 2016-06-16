# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mario = User.create( {  name: "Mario",
                        email: "mario@savetheprinces.com",
                        password: "123456",
                        gender: "male",
                        age: 32,
                        city: "Milan",
                        description: "Plumber, Hero, Italian",
                        photo: "images/user1.jpg",
                        } )

luigi = User.create( { name: "Luigi",
                        email: "luigi@savetheprinces.com",
                        password: "123456",
                        gender: "male",
                        age: 30,
                        city: "Pisa",
                        description: "Plumber, Side-kick, Italian",
                        photo: "images/user2.jpg",
                        } )

britney = User.create( { name: "Britney",
                        email: "britney@savetheprinces.com",
                        password: "234567",
                        gender: "female",
                        age: 18,
                        city: "Paris",
                        description: "Developer, Tennis, French",
                        photo: "images/user3.jpg",
                          } )

janet = User.create( { name: "Janet",
                          email: "janet@savetheprinces.com",
                          password: "345678",
                          gender: "female",
                          age: 28,
                          city: "Amsterdam",
                          description: "Designer, Marathon, Dutch",
                          photo: "images/user4.jpg",
                          } )

rowena = User.create( { name: "Rowena",
                        email: "rowena@savetheprinces.com",
                        password: "345678",
                        gender: "female",
                        age: 43,
                        city: "Berlin",
                        description: "Accountant, Reading books, German",
                        photo: "images/user5.jpg",
                        } )

steven = User.create( { name: "Steven",
                      email: "steven@savetheprinces.com",
                        password: "456789",
                        gender: "male",
                        age: 43,
                        city: "London",
                        description: "Product Manager, Soccer, United Kingdom",
                        photo: "images/user6.jpg",
                                                } )

jason = User.create( { name: "Jason",
                      email: "jason@savetheprinces.com",
                      password: "567897",
                      gender: "male",
                      age: 32,
                      city: "Madrid",
                      description: "Logistics Employer, Cooking, Spanish",
                      photo: "images/user7.jpg",
                      } )


Listing.create( {title: 'Clubbing', content: 'Drinking a lot of drinks',category:'', city: 'The Hague', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Dinner', content: 'Having dinner with a cosy person', category:'', city: 'Amsterdam', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Sailing', content: 'We are going to sail next week', category:'',city: 'The Haque', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Walking' , content: 'Let\'s have some walking at the park',category:'', city: 'Utrecht', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Hiking', content: 'Let\'s hiking',category:'', city: 'Diemen', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Cinema', content: 'Next friday we are going to watch a fun movie',category:'', city: 'Eindhoven', date:(Time.now + 3.weeks)})
Listing.create( {title: 'Swimming', content: 'Next friday we are going to swim',category:'', city: 'Leiden', date: (Time.now + 3.weeks)})
Listing.create( {title: 'Picknicking', content: 'Let\'s have some fun at the park',category:'', city: 'Delft', date: (Time.now + 3.weeks) })
Listing.create( {title: 'Soccer', content: 'Let\'s play soccer game' ,category:'', city: 'Amersfoort', date: (Time.now + 3.weeks)})
Listing.create( {title: 'Gaming', content: 'Let\'s play some funny game',category:'', city: 'The Hague', date: (Time.now + 3.weeks)})

categories =[
"clubbing",
"dinner",
"sailing",
"walking",
"hiking",
"cinema",
"swimming",
"picknicking",
"soccer",
"gaming",
]

categories.each do |category_name|
  category = Category.create(name: category_name)
end

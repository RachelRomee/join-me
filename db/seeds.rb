# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mario = User.create( { name: "Mario",
               email: "mario@savetheprinces.com",
               password: "123456",
               gender: "male",
               age: 32,
               city: "Milan",
               description: "Plumber, Hero, Italian",
               photo: "http://balitangviral.com/wp-content/uploads/2015/09/Super-Mario-08.png",
             } )
luigi = User.create( { name: "Luigi",
               email: "luigi@savetheprinces.com",
               password: "123456",
               gender: "male",
               age: 30,
               city: "Pisa",
               description: "Plumber, Side-kick, Italian",
               photo: "http://www.mariowiki.com/images/thumb/5/55/Luigi_Artwork_-_Super_Mario_3D_World.png/200px-Luigi_Artwork_-_Super_Mario_3D_World.png",
             } )

Listing.create( {title: 'Hiking',
                 content: 'Next friday it\'s my day off and i want to go on a hike',
                 type: 'join or invite',
                 category: 'lalalalala',
                 city: 'The Hague' })
=begin
def change
  create_table :listings do |t|
    t.string :title
    t.text :content
    t.string :type
    t.string :category
    t.string :city
    t.datetime :date

    t.timestamps null: false
  end
=end

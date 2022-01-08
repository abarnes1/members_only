# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# The admin password is updated in production after deployment.
admin = User.new(name: 'Administrator', email: 'admin@membersonly.com',
                 username: 'Administrator', password: 'admin123', admin: true)

admin.save!(validate: false)

tom = User.create(name: 'Tom White', email: 'tom@tomwhite.com',
                  username: 'twhite', password: 'abc123')

tom.posts.create(message: "Sometimes... when I close my eyes... I can't see anything at all...")

paragraph = <<~LOREM
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque
  nunc ullamcorper enim tempor auctor. Vivamus diam tortor, bibendum nec 
  facilisis ac, vestibulum ut odio. Suspendisse leo sem, cursus sed lorem in, 
  ullamcorper faucibus diam. Fusce nec lacinia nulla. Donec et metus erat. 
  Nam tellus ipsum, pellentesque at nisi vitae, hendrerit suscipit felis. 
  Pellentesque vestibulum tincidunt sapien, eu varius lectus porttitor et.
  Praesent nulla dui, rutrum a pretium eget, aliquam eget arcu.
LOREM

tom.posts.create(message: paragraph)

myrtle = User.create(name: 'Myrtle Smith', email: 'myrtle_smith@aol.com',
                     username: 'miss myrtle', password: 'abc123')

myrtle.posts.create(message: "Someone's trash cans are blowing down the road.
                              This upsets me greatly. Control your cans people!!1!")

myrtle.posts.create(message: "Did anyone hear the big boom last night? What was that!?! It scared
                              my dear cat Mrs. Mittens who has been hiding under the bed ever since.")
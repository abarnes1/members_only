# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new(name: 'Administrator', email: 'admin@membersonly.com',
                 username: 'Administrator', password: 'admin123', admin: true)

admin.save!(validate: false)

tom = User.create(name: 'Tom White', email: 'tom@tomwhite.com',
                  username: 'twhite', password: 'abc123')

tom.posts.create(message: "Tom's first post")
tom.posts.create(message: "Tom's second post")

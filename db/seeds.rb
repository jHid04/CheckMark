# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(first_name:"John", last_name:"Smith", email:"jsmith@test.com", user_name:"jmsith", password:"123test")
user_2 = User.create(first_name:"Jane", last_name:"Doe", email:"jdoe@test.com", user_name:"jdoe", password:"123test")
user_3 = User.create(first_name:"Benito", last_name:"Martinez", email:"bmartinez@test.com", user_name:"bmar", password:"123test")

club_1 = Club.create(club_name:"Los Bookies", description:"lovee books", user_id: user_1.id)

memberships_1 = Membership.create(user_id: user_1.id, club_id: club_1.id) 
memberships_2 = Membership.create(user_id: user_2.id, club_id: club_1.id) 
memberships_3 = Membership.create(user_id: user_3.id, club_id: club_1.id) 
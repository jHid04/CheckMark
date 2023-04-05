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

book_1 = Book.create(title:"Artemis", author:"Andy Weir", genre: "Science Fiction", description:"Jazz Bashara is a criminal./nWell, sort of. Life on Artemis, the first and only city on the moon, is tough if you're not a rich tourist or an eccentric billionaire. So smuggling in the occasional harmless bit of contraband barely counts, right? Not when you've got debts to pay and your job as a porter barely covers the rent./nEverything changes when Jazz sees the chance to commit the perfect crime, with a reward too lucrative to turn down. But pulling off the impossible is just the start of her problems, as she learns that she's stepped square into a conspiracy for control of Artemis itself—and that now, her only chance at survival lies in a gambit even riskier than the first.")

book_status_1 = BookStatus.create(status:"Currently Reading",book_id:book_1.id,user_id: user_3.id)

discussion_1 = Discussion.create(title:"Loving Jazz as a character", description: "Jazz is great and funny character and really engaging", user_id: user_3.id, club_id: club_1.id)

comment_1 = Comment.create(comment: "I disagree. Jazz is a boring character and the writing is really weak", user_id: user_1.id, discussion_id: discussion_1.id)
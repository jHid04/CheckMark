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

book_1 = Book.create(title:"Artemis", author:"Andy Weir", description:"The bestselling author of The Martian returns with an irresistible new near-future thriller—a heist story set on the moon.

Jasmine Bashara never signed up to be a hero. She just wanted to get rich.
 
Not crazy, eccentric-billionaire rich, like many of the visitors to her hometown of Artemis, humanity’s first and only lunar colony. Just rich enough to move out of her coffin-sized apartment and eat something better than flavored algae. Rich enough to pay off a debt she’s owed for a long time.
 
So when a chance at a huge score finally comes her way, Jazz can’t say no. Sure, it requires her to graduate from small-time smuggler to full-on criminal mastermind. And it calls for a particular combination of cunning, technical skills, and large explosions—not to mention sheer brazen swagger. But Jazz has never run into a challenge her intellect can’t handle, and she figures she’s got the ‘swagger’ part down.
 
The trouble is, engineering the perfect crime is just the start of Jazz’s problems. Because her little heist is about to land her in the middle of a conspiracy for control of Artemis itself.
 
Trapped between competing forces, pursued by a killer and the law alike, even Jazz has to admit she’s in way over her head. She’ll have to hatch a truly spectacular scheme to have a chance at staying alive and saving her city.
 
Jazz is no hero, but she is a very good criminal.
 
That’ll have to do.
 
Propelled by its heroine’s wisecracking voice, set in a city that’s at once stunningly imagined and intimately familiar, and brimming over with clever problem-solving and heist-y fun, Artemis is another irresistible brew of science, suspense, and humor from #1 bestselling author Andy Weir.")

book_status_1 = BookStatus.create(status:"Currently Reading",book_id:book_1.id,user_id: user_3.id)
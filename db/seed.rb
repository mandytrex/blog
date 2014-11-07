require 'active_record'
require 'pry'

require_relative '../models/author.rb'
require_relative '../models/post.rb'
require_relative '../models/tag.rb'

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'blog_db',
	host: 'localhost'
})

Author.destroy_all
Post.destroy_all
Tag.destroy_all

#AUTHOR DATA
names = ["joenapo", "nbarrios", "laurenprief"]
author_photo = [
	"http://i.imgur.com/X5DPdym.jpg",
	"http://i.imgur.com/9xNPYzE.jpg",
	"http://i.imgur.com/mrzeXxP.jpg"
]
bio = [
	"I'm an allstar basketball player and I love to workout.",
	"Go easy on you. When things go wrong, remind yourself its your first time through this life.",
	"I love to read. I have an obsession with football and hockey. The Jets, The Islanders, and Colin Kaepernick have my heart. I love getting margaritas from Chili's with my best friends."
]

#POST DATA
photo = [
	["http://i.imgur.com/rUiCgA8.jpg", "http://i.imgur.com/0beEZMx.jpg", "http://i.imgur.com/zTHiJ7o.jpg"],
	["http://i.imgur.com/mdFb7c4.jpg", "http://i.imgur.com/9uLWgZF.jpg", "http://i.imgur.com/hXXFdEf.jpg"],
	["http://www.famouslogos.us/images/football/new-york-jets-logo.png", "http://i.imgur.com/R3JgY9n.jpg", "http://i.imgur.com/b0G0kTS.jpg" ]
]
caption = [
	[
		"Batting cages today... I peaked in little league.",
		"Montauk fall festival! Local beer and wine and apple pie. Can you think of a better Sunday than that?",
		"Halloween 2014. Savings lives by night."
	],
	[
		"Is this real life? Even while pregnant, Blake Lively is everything. Love her!",
		"Spider and Zoolander. Don't we make the perfect pair?",
		"Sunday Funday watching the Jets.. not! SOS! I would rather be watching Grey's Anatomy on Netflix."
	],
	[
		"Jets just do us a favor and call the game. PLEASE!",
		"Am I basic yet?",
		"Draft day, pumpkin latte, and my favorite puppy came to visit! Perfect."
	]
]

#TAG DATA
tag_name = [ "sports", "friendship", "beer", "holidays", "celebrities", "movies", "tv", "animals", "food", "drinks"]


# CREATE DATA
joe = Author.create({
	user_name: names[0], 
	image_url: author_photo[0], 
	bio: bio[0]
})


natalia = Author.create({
	user_name: names[1], 
	image_url: author_photo[1], 
	bio: bio[1]
})

lauren = Author.create({
	user_name: names[2], 
	image_url: author_photo[2], 
	bio: bio[2]
})

#POSTS
batting_cage = Post.create({
	image_url: photo[0][0],
	caption: caption[0][0],
	created_at: "July 22, 2014",
	author: joe
})

montauk = Post.create({
	image_url: photo[0][1],
	caption: caption[0][1],
	created_at: "October 12, 2014",
	author: joe
})
superhero = Post.create({
	image_url: photo[0][2],
	caption: caption[0][2],
	created_at: "October 31, 2014",
	author: joe
})
blake_lively = Post.create({
	image_url: photo[1][0],
	caption: caption[1][0],
	created_at: "October 3, 2014",
	author: natalia
})

zoolander = Post.create({
	image_url: photo[1][1],
	caption: caption[1][1],
	created_at: "October 31, 2014",
	author: natalia
})

jets_natalia = Post.create({
	image_url: photo[1][2],
	caption: caption[1][2],
	created_at: "October 26, 2014",
	author: natalia
})

jets_lauren = Post.create({
	image_url: photo[2][0],
	caption: caption[2][0],
	created_at: "September 22, 2014",
	author: lauren
})
basic_gum = Post.create({
	image_url: photo[2][1],
	caption: caption[2][1],
	created_at: "October 20, 2014",
	author: lauren
})

dog_lauren = Post.create({
	image_url: photo[2][2],
	caption: caption[2][2],
	created_at: "September 1, 2014",
	author: lauren
})

#SPORTS TAG
sport = Tag.create({
	name: tag_name[0],
})

#FRIENDSHIP TAG
friendship = Tag.create({
	name: tag_name[1],
})

#BEER TAG
beer = Tag.create({
	name: tag_name[2],
})

#HOLIDAYS TAG
holiday = Tag.create({
	name: tag_name[3],
})

#CELEBRITIES TAG
celebrity = Tag.create({
	name: tag_name[4],
})

#MOVIES TAG
movie = Tag.create({
	name: tag_name[5],
})

tv = Tag.create({
	name: tag_name[6],
})

animal = Tag.create({
	name: tag_name[7],
})

food = Tag.create({
	name: tag_name[8],
})

drink = Tag.create({
	name: tag_name[9],
})

batting_cage.tags.push(sport)
montauk.tags.push(beer, food, drink, friendship)
superhero.tags.push(holiday, beer, friendship)
blake_lively.tags.push(celebrity, tv)
zoolander.tags.push(holiday, movie, beer, friendship)
jets_natalia.tags.push(sport, beer, friendship, tv)
jets_lauren.tags.push(sport, drink)
basic_gum.tags.push(food)
dog_lauren.tags.push(animal, sport)


User.create!(
   email: "admin@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf",
   roles: "admin"
)

puts "1 admin user created"

User.create!(
   email: "test@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf"
)

puts "1 regular user created"


8.times do |i|
  Studio.create!(	title: "Paraiso Gameing studios #{i}", 	
  					location: "MF AMERICA!!",
  					searchable: "Paraiso Gameing studiosMF AMERICA!!")
end

puts "8 studios created"




500.times do |i|
	Character.create!(	name: "cool character number #{i}",
						age: i , 
						home_town: "PantsLand", 
						first_appearence: "game", 
						biography: "m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, cool bio", 
						searchable:"cool character number #{i}#{i}PantsLandgamem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, cool bio" )
end

puts "500 Characters created (cause why not)"


Game.create!(	title: "Halo", 
				release: (Date.today - 7.years), 
				description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				searchable: "Halo#{(Date.today - 7.years).to_s}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(	title: "Call of Duty", 
				release: Date.today - 46.months, 	
				description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				searchable:"Call of Duty#{Date.today - 46.months}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


Game.create!(	title: "Last of us", 
				release: Date.today, 
				description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				searchable: "Last of us#{Date.today}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(	title: "Top Pet Shop", 
				release: Date.today, 	
				description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				searchable: "Top Pet Shop#{Date.today}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(	title: "PUBG", 
	     		release: Date.today, 
	     		description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	     		searchable: "PUBG#{Date.today}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!( title: "Solitare", 
          release: Date.today, 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          searchable: "PUBG#{Date.today}Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

puts "6 games created"



Platform.create!(	name: "xbox", 
					release_date: "1994-01-29", 
					brand: "Microsoft",
					searchable: "xbox1994-01-29Microsoft")

Platform.create!(	name: "PlayStation", 
					release_date: "1995-06-15", 
					brand: "Sony",
					searchable: "Playstation1995-06-15Sony")

Platform.create!(	name: "Windows", 
					release_date: "1995-05-23", 
					brand: "Microsoft",
					searchable: "Windows1995-05-23Microsoft")

Platform.create!(	name: "Android", 
					release_date: "1992-08-17", 
					brand: "Google",
					searchable: "Android1992-08-17Goolge")

puts "4 platforms created"


Gamplat.create!(game_id: 1, platform_id: 1)

Gamplat.create!(game_id: 2, platform_id: 1)

Gamplat.create!(game_id: 2, platform_id: 2)

Gamplat.create!(game_id: 2, platform_id: 3)

Gamplat.create!(game_id: 3, platform_id: 2)

Gamplat.create!(game_id: 4, platform_id: 4)

Gamplat.create!(game_id: 5, platform_id: 1)

Gamplat.create!(game_id: 5, platform_id: 2)

Gamplat.create!(game_id: 5, platform_id: 3)

Gamplat.create!(game_id: 5, platform_id: 4)

puts "10 gamplats created"



Person.create!(name: "Andrew Lloyd", bigraphy: "Is the best", searchable: "Is the bestAndrew Lloyd gay")

Person.create!(name: "Weston Nokes", bigraphy: "is not the best cuz im typing this in a bigraphy not a biography", searchable: "Weston Nokesis not the best cuz im typing this in a bigraphy not a biographygay")

Person.create!(name: "Matthew Read", bigraphy: "I guess he is alright.  The favorites and likes are pretty cool", searchable: "Matthew ReadI guess he is alright.  The favorites and likes are pretty cool")

Person.create!(name: "Kenzie Lloyd", bigraphy: "I married her once", searchable: "I married her onceKenzie Lloyd")

Person.create!(name: "N/A", bigraphy: "If weston lonely this would be for his boyfriend", searchable: "N/AIf weston lonely this would be for his boyfriend")

Person.create!(name: "Becca", bigraphy: "Matt and becca sitting in a tree K. I. S. S. I. N. G.", searchable: "BeccaMatt and becca sitting in a tree K. I. S. S. I. N. G.")

puts "6 people created"



Gample.create!(game_id: 1, person_id: 1, role: "placeholder")

Gample.create!(game_id: 1, person_id: 4, role: "placeholder")

Gample.create!(game_id: 2, person_id: 2, role: "placeholder")

Gample.create!(game_id: 2, person_id: 5, role: "placeholder")

Gample.create!(game_id: 3, person_id: 3, role: "placeholder")

Gample.create!(game_id: 3, person_id: 6, role: "placeholder")

Gample.create!(game_id: 4, person_id: 1, role: "placeholder")

Gample.create!(game_id: 4, person_id: 2, role: "placeholder")

Gample.create!(game_id: 4, person_id: 3, role: "placeholder")

Gample.create!(game_id: 5, person_id: 4, role: "placeholder")

Gample.create!(game_id: 5, person_id: 5, role: "placeholder")

Gample.create!(game_id: 5, person_id: 6, role: "placeholder")

Gample.create!(game_id: 6, person_id: 1, role: "placeholder")

Gample.create!(game_id: 6, person_id: 2, role: "placeholder")

Gample.create!(game_id: 6, person_id: 3, role: "placeholder")

Gample.create!(game_id: 6, person_id: 4, role: "placeholder")

Gample.create!(game_id: 6, person_id: 5, role: "placeholder")

Gample.create!(game_id: 6, person_id: 6, role: "placeholder")


puts "I really hate how we have to do the seeds for these relations...   Ps, here is 18 gamples"


CharactersGame.create!(character_id: 1, game_id: 1)

CharactersGame.create!(character_id: 5, game_id: 2)

CharactersGame.create!(character_id: 8, game_id: 2)

CharactersGame.create!(character_id: 9, game_id: 5)

CharactersGame.create!(character_id: 3, game_id: 5)

CharactersGame.create!(character_id: 78, game_id: 5)

CharactersGame.create!(character_id: 5, game_id: 6)
puts "7 characters_games"


UserGameStatus.create!(user_id: 1, game_id: 1, status: 0)
UserGameStatus.create!(user_id: 1, game_id: 2, status: 1)
UserGameStatus.create!(user_id: 1, game_id: 3, status: 2)
UserGameStatus.create!(user_id: 1, game_id: 4, status: 3)

UserGameStatus.create!(user_id: 2, game_id: 1, status: 0)
UserGameStatus.create!(user_id: 2, game_id: 2, status: 1)
UserGameStatus.create!(user_id: 2, game_id: 3, status: 2)
UserGameStatus.create!(user_id: 2, game_id: 4, status: 3)

puts "8 user_game_status"

10.times do |it|
Resubmission.create!(title: "im editing a thing ")


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


8.times do |this|
  Studio.create!(title: "Paraiso Gameing studios #{this}", location: "MF AMERICA!!")
end

puts "8 studios created"




500.times do |i|
	Character.create!(name: "cool character number #{i}",age: i , home_town: "PantsLand", first_appearence: "game", biography: "m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, cool bio" )
end

puts "500 Characters created (cause why not)"


Game.create!(title: "Halo", release: Date.today, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(title: "Call of Duty", release: Date.today, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(title: "Last of us", release: Date.today, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(title: "Top Pet Shop", release: Date.today, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Game.create!(title: "PUBG", release: Date.today, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


puts "5 games created"



Platform.create!(name: "xbox", release_date: "1994-01-29", brand: "Microsoft")

Platform.create!(name: "PlayStation", release_date: "1994-01-29", brand: "Sony")

Platform.create!(name: "Windows", release_date: "1994-01-29", brand: "Microsoft")

Platform.create!(name: "Android", release_date: "1994-01-29", brand: "Android")


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
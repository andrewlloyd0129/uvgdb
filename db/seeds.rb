10.times do |things|
  Game.create!(title: "This game came from seeds #{things}", release: "1994-01-29", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
end

puts "10 games created"

8.times do |this|
  Studio.create!(title: "Paraiso Gameing studios #{this}", location: "MF AMERICA!!")
end

puts "8 studios created"

11.times do |platform|
  Platform.create!(name: "xbox #{platform}", release_date: "1994-01-29", brand: "microsoft")
end

puts "11 platforms created"


500.times do |i|
	Character.create!(name: "cool character number #{i}",age: i , home_town: "PantsLand", first_appearence: "game", biography: "m ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, cool bio" )
end

puts "500 Characters created (cause why not)"


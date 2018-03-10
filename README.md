TODO:

*CRUD*
- CRUD for platforms
- CRUD for Characters
- CRUD for people
- in games crud add carrierwave for photos.  One feature pic, and other pics



*USERS*
- sign in/ sign out pages
- devise users to favorite games, add as beat story, add as beat 100%,  add to wishlist, also can submit new content - games characters etc,   you can like games (act as votable)
- admin user (petergate) to approve any content submissions from users

*Nav Bar*
- Logo for uvgbdb
- global serch bar
- Drop down menu for what you are searching
- mini nav bar for links to: Games Stusios Characters Random Page

*Other Crap*
- page for top 10 games this week, this month, all time
- add gritter and make them show up (currently if you cannot create a new game it fails silently)
- add kaminari to paginate big pages, example: if one studio has a butt ton of games, paginate them   use this kaminari so it works gem 'kaminari', :git => 'https://github.com/kaminari/kaminari.git'     play around with different views for pagination ex. rails generate kaminari:views bootstrap3
- make it so anyome can make games, studios, characters etc but admins have to approve them.
- create admin dashboard that shows all pending characters, studios and games that are pending approval
- On games show page, if game was released in past x years, add month to year

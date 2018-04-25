TODO:


*MVP*
- HomePage
- Styles
- Images on more than games
- make sure crap aint broke
- 100% all gamples
- little things



Wednesday
  - [ ] Admin dashboard
    • [ ] Users list page
    • [ ] Create new things
    •? [ ] Sub nav bar
  

*CRUD*
- gample
  • add some sort of form to make gamples
  • add roles to games/links on people and games
  • refactor views

- chargams
  • add some sort of form to make chargams
  • rafactor views

- Gamplat
  • make drop down pretty and searchable 

- Resubmissions
 • look into duplicating records instead of making a resubmission crud: this link appears to help
 • http://dmitrypol.github.io/2016/11/15/rails-clone-records.html
 • re re nuke resubmissions crud assuming the duplications works.
 • dublicated records will go to the admin dashboard as a draft
 • highlight changes in yellow
 • when approved, delete the original record and duplicate status is live.  
 • make it so the id of the original stays the id of the new one so gamplats dont get jacked up


- wire people to studios (people should have a list of studios they worked for)

*USERS
- User profile page
  -[ ] Account
    •[ ] Profile Pic
    •[ ] Bio
    •[ ] Info
  -[ ] Personal games
    •[X] Story Beaten
    •[X] 100% Complete
    •[X] Games owned but not played
    •[X] Wishlist
    •[ ] Consoles owned
  •[ ] Reviews
  •[ ] Settings
  -[ ] refactor logic
-[ ] Badges
-[ ] Admin Dashboard page
  •[ ] Pending content for review
    -[ ] two parts, one submitted resubmitions
    -[ ] one for new content submissions for drafts
  •[ ] Edit users
-[X] Users can add games as:
  •[X] Story Beaten
  •[X] 100% Complete
  •[X] Owned but not played
  •[X] Wishlist
-[ ] on view page, admin can see links to edit and delete, users can see link for new resubmissions, not signed in sees nothing
-[ ] User creates game
  •[ ] enum: publihsed, draft
  •[ ] goes to admin dash
  •[ ] admin changes if needed
  •[ ] added pushes approved
  •[ ] change enum to published
-[ ] User updates a game
  •[ ] creates a resubmission crud sends to admin
  •[ ] admin sees resubmission, if its approved starts an edit on existing game
  •[ ] publhises it


*Nav Bar*
- -
-[X] Dropdown menu
  •[X] User page link
  •[X] Admin page link
- Logo for uvgdb
- Search bar
  • Dropdown menu for specific search
  • Global search for all items
- Nav bar links
  • Random-Page

*Ransack*
- Build out custom search feature and replace ransack

*Styles*
- We should probably figure this out sooner than later

*Other Crap*
- page for top 10 games this week, this month, all time
- add gritter and make them show up (currently if you cannot create a new game it fails silently)
- On games show page, if game was released in past x years, add month to year
- Implement functinoality so when the user goes back to a page it carries over their search for the page (I.e search halo on games page, click halo 2 show page, go click games page goes back to search for halo)
- I found this library for carrierwaive and stuff for pictures and videos.  https://rails.devcamp.com/trails/dissecting-rails-5/campsites/images-videos-rails-5
- social media links



*Fan Art*
- Fan art section on Games
  - Build out CRUD for fan arts
    •fan arts should have an image
    •should have creator/artist as well as a link for the creator/artist webpage
  - Build out gamplats for fan arts to games
  - fan arts should be approved by an admin to avoid explicit content
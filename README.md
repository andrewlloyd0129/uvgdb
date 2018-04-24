TODO:

*MVP*
- HomePage
- Styles
- Images on more than games
- make sure crap aint broke
- 100% all gamples
- little things


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


- enums -- add enum for draft and published for all crud.  new entries by users default to draft and show up in the admin dashboard.  Admins then approve them to published and they are pushed live.
 • Studios
 • People
 • Platforms
 • Characters


- wire people to studios (people should have a list of studios they worked for)

*USERS*
- User profile page
  - Account
     Profile Pic
    • Bio
    • Info
  - Personal games
    • Story Beaten
    • 100% Complete
    • Games owned but not played
    • Wishlist
    • Consoles owned
  • Reviews
  • Settings
  - refactor logic
- Badges
- Admin Dashboard page
  • Pending content for review
    - two parts, one submitted resubmitions
    - one for new content submissions for drafts
  • Edit users
- Users can add games as:
  • Story Beaten
  • 100% Complete
  • Owned but not played
  • Wishlist

*Nav Bar*
- Dropdown menu
  • User page link
  • Admin page link
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
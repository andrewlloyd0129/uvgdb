TODO:

*CRUD*
- gample
  • add some sort of form to make gamples
  • add roles to games/links on people and games
  • refactor views
- chargams
  • add some sort of form to make chargams
  • rafactor views
- in crud for games add carrierwave for photos.  One feature pic, and other pics
- Gamplat I finally finsihed the freaking gamplat.   THe dropdown for platforms works but its ugly one day when my brain isnt fried from the mother freaking gamplat (and probably when prophet is here to help me) I will mess with an empty value and a typeable box to search through it
- make a new crud for resubmissions.  This is how any user can update existing things.  these will go to the admin dashboard for the admin to make the official live changes.
- add enum for draft and published for all crud.  new entries by users default to draft and show up in the admin dashboard.  Admins then approve them to published and they are pushed live
- wire people to studios (people should have a list of studios they worked for)

*USERS*
- User profile page
  - Account
    • Profile Pic
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
- on view page, admin can see links to edit and delete, users can see link for new resubmissions, not signed in sees nothing
- User creates game
  • enum: publihsed, draft
  • goes to admin dash
  • admin changes if needed
  • added pushes approved
  • change enum to published
- User updates a game
  • creates a resubmission crud sends to admin
  • admin sees resubmission, if its approved starts an edit on existing game
  • publhises it
- Form for new resubmission
  • tb title
  • what it is (game, palt etc)
  • link to it - auto add
  • text box for what they want to change
  • date 
  • user who submitted it 

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


*Fan Art*
- Fan art section on Games
  - Build out CRUD for fan arts
    •fan arts should have an image
    •should have creator/artist as well as a link for the creator/artist webpage
  - Build out gamplats for fan arts to games
  - fan arts should be approved by an admin to avoid explicit content (weston doesnt want to see Cortana's blue boobs)

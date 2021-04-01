# Viewing Party

This is the base repo for the [viewing party project](https://backend.turing.io/module3/projects/viewing_party) used for Turing's Backend Module 3.

### About this Project

Viewing party is an application in which users can explore movie options and create a viewing party event for the user and follower's.  The app does not yet
have capability to stream movies so it is more for the purpose of setting a calendar event, with specific movie details, to help coordinate a joined viewing 
experience.

### Link to deployed application
https://vast-mountain-66778.herokuapp.com/

### How to Use
Register by signing up with your email and a password.  You can follow other users and other users can follow you.  Search for a movie either by finding the 40 top rated movies OR search for a movie by title.  From there you can create a viewing party to set a date and time to watch a specific movie with your followers.  Invite anybody who is following you to the viewing party.  If you are following somebody but they are not following you than you cannot invite them to the party (at least not over the app!).

### A Note on Followers
This app works along the lines of Twitter rather than say Facebook.  If you are following someone that does NOT mean they are automatically following you.  Following/followers are one directional.  You of course can follow someone who is following you but each registered user must submit the other's email into the appropriate field to follow the user they want to.

## Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:create`


## Versions

- Ruby 2.5.3

- Rails 5.2.4.3

Example wireframes to follow are found [here](https://backend.turing.io/module3/projects/viewing_party/wireframes)

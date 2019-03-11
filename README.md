# scouting-advancement-tracker-server

# Planning:

## Project Idea — What is your project idea?  How did you come up with it? Why? Who would use it?

My project idea is an advancement tracking app for Scouts. Initially it will allow scouts to track and record their merit badges, but ideally will include rank, troop organization and roles, and the ability to connect with other scouts.

I came up with it whil reading about the recent inclusion of young women into what used to be call the Boy Scouts but is now called Scouts BSA. I was reflecting on my own positive experices as a child and young adult, how scouting helped me grow as a person, and, now, felt excitement about the opportunity being open to all children in this country.

## User stories

+ As a user, I want to sign up for an account.
+ As a user, I want to sign in with my account.
+ As a user, I want to create a new merit badge that I'm working on or have completed.
+ As a user, I want to view all the merit badges I'm working on or have completed.
+ As a user, I want to delete merit badges I'd decided to no pursue now.
+ As a user, I want to edit the state and details of a merit badge I've created.
+ As a user, I want to sign out.
+ As a user, I want to change my password.

## tables and columns

```md
tables: users, merit_badges

users columns: id, email, password

merit_badges columns: id, name, completed, notes, user_id
```

## ERD

Links to a simple MVP ERD, and also to a potential more advanced future version:
+ [MVP ERD](https://i.imgur.com/L8yJWl8.jpg)
+ [Potential future ERD](https://i.imgur.com/hFIfY7K.jpg)

## Routing

```md
merit_badges#index
merit_badges#show
merit_badges#create
merit_badges#update
merit_badges#delete
```
## Wireframes

+ [Mobile view of Sign in](https://i.imgur.com/L8yJWl8.jpg)
+ [Mobile view of Merit Badges](https://i.imgur.com/hFIfY7K.jpg)

## Timetable

Work on one step at a time, mostly in order, from the following list:
1. Wireframe app
1. Write user stories
1. Make ERD
1. Create list of steps
1. Set up rails template, including migration, and do initial commit + push to GH
1. Set up browser template and do initial commit + push to GH
1. Scaffold merit_badges and customize code
1. CRUD test with curl scripts
1. Add user authentication requirement to merit_badges
1. CRUD test with curl scripts
1. Deploy API to heroku and CRUD test with curl scripts
1. Work on user authentication features
  1. Make basic front-end layout with easiest availible technologies (HTML/SASS/Bootstrap)
  1. Get authentication working with Rails backend on heroku
1. Work on merit badge CRUD
  1. Make basic front-end layout with easiest availible technologies (HTML/SASS/Bootstrap/Handlebars)
  1. Get merit badge CRUD working with Rails backend on heroku
1. Test, debug, repeate.
1. Refactor, test, debug, repeate.

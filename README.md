# Scouting Advancement Tracker Server!

An online tool to keep track of your rank and all the merit badges you've been working on and have completed.

I was inspired by the recent inclusion of young women into what used to be call the Boy Scouts but is now called Scouts BSA. Scouting was played a major role in my adolescent development, and I was always saddened that it wasn't availible to everyone. This project is dedicated to all children, everywhere.

+ Client site: https://zzyyfff.github.io/scouting-advancement-tracker-client/
+ Client repo: https://github.com/zzyyfff/scouting-advancement-tracker-client
+ Server site: https://obscure-atoll-84260.herokuapp.com/users
+ Server repo: https://github.com/zzyyfff/scouting-advancement-tracker-server

## Technologies used

+ Ruby
+ Rails
+ PostgreSQL

## Getting involved

Interested in playing with the code or contributing? Read on.

#### Prerequisites

+ You will likely want to set up the [Scouting Advancement Tracker Client](https://github.com/zzyyfff/scouting-advancement-tracker-client). See further installation instructions on its repo: https://github.com/zzyyfff/scouting-advancement-tracker-client
+ Any text editor will do. I use [Atom](https://atom.io/), which makes development easier.

#### Setup Environment:
1.  Fork and clone the respository locally
1.  Install dependencies with `bundle install`.
1.  `git add` and `git commit` your changes.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rails secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests to your the API, you will need to set
    `SECRET_KEY_BASE` in the environment of the production API (for example, using `heroku config:set` or the Heroku dashboard).
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (for example, `heroku config:set CLIENT_ORIGIN=https://<github-username>.github.io`).
    See more about deploying to heroku [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide)

#### Setup your database:
  - bin/rails db:drop (if it already exists)
  - bin/rails db:create
  - bin/rails db:migrate

Note: Remember to follow the same commands when setting up your deployed database!

#### Back-end Deployment

1.  Make sure you have a working [Heroku account and the heroku command line tools](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide) and are logged in to Heroku.
1.  Merge down to your `master` branch
1. If it has not been run before, run `heroku create` *once*. **Skip this step for subsequent deployments!**
1. `git push heroku master`
1. `heroku run rails db:migrate`
1. `heroku config:set SECRET_KEY_BASE=$(rails secret)`
1. `heroku config:set SECRET_TOKEN=$(rails secret)`
1. `heroku config:set CLIENT_ORIGIN=https://yourgithubname.github.io`
1. `heroku restart`


## Planning and Development

This project is born out of the Software Engineering Immersive course at General Assembly Boston (formerly the WDI, Web Development Immersive) and is the server side of my first full-stack project.

#### My Process

1. Consider and brainstorm on the mission and goals of the project, based on the project requirements.
2. Perform user research; talking to potential users about what they would look for in a scouting advancement tracker and what they would need or want from it.
3. List out the functionality of an [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product) and separately bucket future functionality that would not be part of the [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product).
4. Draw up wireframes and settle on an initial interface design goal. The final interface will change through user testing and redesign.
5. Create user stories
6. Prioritize user stories, putting the ones with the most dependents first
7. Create an ERD (*See ERD below*)
7. Implement a back-end API with Ruby/Rails/PostgreSQL
8. Create the basic layout of UI elements in HTML/CSS/SASS/Bootstrap/Handlebars, using semantic tags when possible and only enough styling to meet [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product) layout needs.
9. Connnect front-end elements to the back-end API.
10. Test, troubleshoot, debug, refactor, and confirm working deployment.
11. If there is enough time, begin work on stretch goal features and test them in deployment
12. Fill in README.md
13. Once all base functionality is established, apply aesthetic style

## tables and columns

```md
tables: users, merit_badges

users columns: id, email, password

merit_badges columns: id, name, completed, notes, user_id
```

## ERD

+ **[MVP ERD](https://i.imgur.com/L8yJWl8.jpg)**

## API End Points

| Verb   | URI Pattern              | Controller#Action    |
|--------|--------------------------|----------------------|
| POST   | `/sign-up`               | `users#signup`       |
| POST   | `/sign-in`               | `users#signin`       |
| DELETE | `/sign-out`              | `users#signout`      |
| PATCH  | `/change-password`       | `users#changepw`     |
| PATCH  | `/change-rank`           | `users#changerank`   |
| PATCH  | `/change-name`           | `users#changename`   |
| GET    | `/merit_badges`          | `merit_badges#index` |
| GET    | `/merit_badges/:id`      | `merit_badges#show`  |
| POST   | `/merit_badges`          | `merit_badges#create`|
| GET    | `/merit_badges/:id`      | `merit_badges#show`  |
| PATCH  | `/merit_badges/:id`      | `merit_badges#update`|

All data returned from API actions is formatted as JSON.

## Problem Solving Strategy

When a functional element doesn't work as exepcted, my strategy is to break down the element into smaller parts, testing to make sure each is functioning as expected. In Ruby, this might involve using `puts`, `binding.pry`, and confirming functionality via a curl script. In all situations, I carefully follow the logical sequence of events and make sure I understand what is going on.

When I've exhausted my own ability to debug a situation, I begin formulating how I would communicate this problem to others. I search online for similar issues and educate myself about the technologies and surrounding issues.

Finally, if an answer hasn't been found, I create a showcase of the problem, including example code, the steps to reproduce the problem, and what I've attempted so far, and I use this to ask for help from colleagues and the community of programers.

## Unsolved Problems & Future Direction

+ Ideally, users should not be able to add a merit badge that they already own.
+ Include merit badge requirements that can individually be met.
+ Include rank advancemnt requirements.
+ Allow scouts to join a troop and interact with each other.
+ Integrated messaging between users

## [License](LICENSE)

1. All content is licensed under a CC­BY­NC­SA 4.0 license.
1. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact jonathan.marcus@gmail.com.

## Acknowledgments

Special thanks to Dr. Edward Marcus, Jennifer Meade, Erica Salling, Ben Jenkins, Toni Langley, Jordan Allain, Caleb Pearce, Naida Rosenberger, GA WDI-30, and everyone at General Assembly Boston.

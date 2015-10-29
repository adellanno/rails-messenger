# Rails Messenger
## for Rails 4

### About
Rails messenger provides you with light-weight messaging functionality between users of your rails application. It will create your messaging model, views, routes and controller for two users to exchange messages between each other.

### Getting started

install the gem:

`gem install rails-messenger`

install in your rails app:

`rails generate messaging:install`

`bin/rake db:migrate`

You will now have 3 paths between two users

gets:

`/message/:from_id`

`/messages`

post:


`/message/:to_id`

####
notes:
There must be a current_user logged in for messages to be exchanged

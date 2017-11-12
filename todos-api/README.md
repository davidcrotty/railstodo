# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Steps taken
Rubocop gem installed
ruby plugin
Rubocop vscode plugin

default and main ruby set as 2.4.2, as well as config.yml path

rails new todos-api --api -T (no tests)

generate models
rails g model Item name:string done:boolean todo:references
rails g model Todo title:string created_by:string

##PostgresSQL##
follow https://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/
viewer: https://www.pgadmin.org/ (connect to localhost)

Create users/db https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx
user: applications password: rails

##Controllers##
rails g controller Todo
rails f controller Item

##Routing##
run rails routes to preview perceived routes.
Edit routes.rb to change this
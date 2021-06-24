require 'bundler'
Bundler.require

# database.yml configures our database connection
# you might also see it like this in the labs:
# ActiveRecord::Base.establish_connection(
#   adapter: 'sqlite3',
#   database: "db/development.sqlite"
# )

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
# require all files in our lib directory
require_all 'lib'

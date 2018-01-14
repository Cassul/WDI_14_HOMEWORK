require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'movie_records',
}

ActiveRecord::Base.establish_connection(options)
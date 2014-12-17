require 'active_record'
#username, password, where it's running, and the name of the database
ActiveRecord::Base.establish_connection('postgresql://' + ENV["DB_INFO"] + '@127.0.0.1/wordplay')

# ActiveRecord::Base.establish_connection({
  # :adapter => "postgresql", #can work with any type of sql database. List the type here.
  # :host => "localhost", #running it on the ip listed address (in this place localhost, whcih is a synonym for 127.0.0.1)
  # :username => "Jarett", # your psql username
  # :database => "anagrams" #we're explicitly giving it the name of the database we want to connect to.
  # })

  ActiveRecord::Base.logger = Logger.new(STDOUT)
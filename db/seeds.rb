require_relative('../models/actors.rb')
require_relative('../models/films.rb')
#require_relative('../models/films_with_actors.rb')

require( 'pry' )

actor1 = Actor.new("name" => "Brad Pitt", "age" => 70)
actor1.save()

actor2 = Actor.new("name" => "Edward Norton", "age" => 65)
actor2.save()

film1 = Film.new("name" => "Fight Club", "genre" => "Drama")
film1.save()

film2 = Film.new("name" => "2001: A Space Odyssey", "genre" => "Rom-com")
film2.save()


binding.pry

nil
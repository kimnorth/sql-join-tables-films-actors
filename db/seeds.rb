require_relative('../models/actors.rb')
require_relative('../models/films.rb')
require_relative('../models/films_with_actors.rb')

require( 'pry' )

actor1 = Actor.new({"name" => "Brad Pitt", "age" => 70})
actor1.save()

actor2 = Actor.new({"name" => "Edward Norton", "age" => 65})
actor2.save()

film1 = Film.new({"name" => "Fight Club", "genre" => "Drama"})
film1.save()

film2 = Film.new({"name" => "2001: A Space Odyssey", "genre" => "Rom-com"})
film2.save()

films_with_actors1 = FilmsWithActors.new({"film_id" => film1.id, "actor_id" => actor1.id})
films_with_actors1.save()

films_with_actors2 = FilmsWithActors.new({"film_id" => film2.id, "actor_id" => actor2.id})
films_with_actors2.save()

films_with_actors3 = FilmsWithActors.new({"film_id" => film2.id, "actor_id" => actor1.id})
films_with_actors3.save()

binding.pry
nil
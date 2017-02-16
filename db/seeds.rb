require_relative('../models/actors.rb')
require_relative('../models/films.rb')
require_relative('../models/films_with_actors.rb')

require( 'pry' )

FilmsWithActors.delete_all()
Film.delete_all()
Actor.delete_all()

actor1 = Actor.new({"name" => "Brad Pitt", "age" => 70})
actor1.save()

actor2 = Actor.new({"name" => "Edward Norton", "age" => 65})
actor2.save()

actor3 = Actor.new({"name" => "Hal The Robot", "age" => 9000})
actor3.save()

actor4 = Actor.new({"name" => "Catherine Zeta Jones", "age" => 51})
actor4.save()

film1 = Film.new({"name" => "Fight Club", "genre" => "Drama"})
film1.save()

film2 = Film.new({"name" => "2001 A Space Odyssey", "genre" => "Rom-com"})
film2.save()

film3 = Film.new({"name" => "Oceans 11", "genre" => "Heist"})
film3.save()

# Fight Club

films_with_actors1 = FilmsWithActors.new({"film_id" => film1.id, "actor_id" => actor1.id, "year" => 1996})
films_with_actors1.save()

films_with_actors2 = FilmsWithActors.new({"film_id" => film1.id, "actor_id" => actor2.id, "year" => 1996})
films_with_actors2.save()
#---------
#2001

films_with_actors3 = FilmsWithActors.new({"film_id" => film2.id, "actor_id" => actor3.id, "year" => 1969})
films_with_actors3.save()

#---------
# Ocean's 11

films_with_actors4 = FilmsWithActors.new({"film_id" => film3.id, "actor_id" => actor4.id, "year" => 2002})
films_with_actors3.save()

#----------

binding.pry
nil
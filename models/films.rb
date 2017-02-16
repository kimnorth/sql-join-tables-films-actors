require_relative( '../db/sql_runner.rb' )

class Film

  attr_reader :id
  attr_accessor :name, :genre

def initialize(options)
  @name = options['name']
  @genre = options['genre']
  @id = options['id'] if options['id']
end

def save()
  sql = "INSERT INTO films (name, genre) VALUES ('#{@name}', '#{@genre}') RETURNING *"
  film = SqlRunner.run(sql).first
  @id = film['film_id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM films;"
  SqlRunner.run(sql)
end

def update()
  sql = "UPDATE films SET (name, genre) =
        ('#{@name}', '#{@genre}')
        WHERE film_id = #{@id};"
  SqlRunner.run(sql)
end

def self.get_many(sql)
  films = SqlRunner.run(sql)
  result = films.map {|film| Film.new(film)}
  return result
end

# def film()
#   sql = "SELECT films.* from films
#          INNER JOIN films_with_actors ON films_with_actors.actor_id = actor_id
#          WHERE films_with_actors.film_id = #{@id};"
#   return Film.get_many(sql)
# end

end
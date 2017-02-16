require_relative( '../db/sqlrunner.rb' )

class Film

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

end
require_relative('../db/sql_runner.rb')

class FilmsWithActors

attr_reader :id
attr_accessor :year

def initialize (options)
  @id = options['id'].to_i
  @film_id = options['film_id'].to_i
  @actor_id = options['actor_id'].to_i
  @year = options['year'].to_i

end

def save()
  sql = "INSERT INTO films_with_actors (film_id, actor_id, year) VALUES (#{@film_id}, #{@actor_id}, #{@year}) RETURNING *;"
  film_with_actors = SqlRunner.run(sql).first
  @id = film_with_actors['id_films_actors'].to_i
end

# def get_actor()


# end

  def self.delete_all()
    sql = "DELETE FROM films_with_actors;"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE films_with_actors SET (year) =
          (#{@year})
          WHERE id_films_actors = #{@id};"
    SqlRunner.run(sql)
  end

end
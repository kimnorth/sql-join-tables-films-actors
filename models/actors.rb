require_relative('../db/sql_runner.rb')

class Actor

  attr_reader :id
  attr_accessor :name, :age

  def initialize(options)
    @name = options["name"]
    @age = options["age"]
    @id = options["actor_id"] if options["actor_id"]
  end

  def save()
    sql = "INSERT INTO actors (name, age)
          VALUES ('#{@name}', '#{@age}') 
          RETURNING *;"
    actor = SqlRunner.run(sql).first
    @id = actor["actor_id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM actors;"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE actors SET (name, age) =
          ('#{@name}', '#{@age}')
          WHERE actor_id = #{@id};"
    SqlRunner.run(sql)
  end

end
require_relative("../db/sql_runner")

class Casting


attr_reader :id, :movie_id, :star_id, :fee

def initialize(options)
  @id = options['id'].to_i if options['id']
  @movie_id = options['movie_id']
  @star_id = options['star_id']
  @fee = options['fee'.to_i]
end

def save()
  sql = "INSERT INTO casting
  (
  movie_id,
  star_id,
  fee

  )VALUES
  (
  $1, $2, $3
  )
  RETURNING id"
  values =[@movie_id, @star_id, @fee]
  movie = SqlRunner.run(sql, values)[0]
  @id = casting['id'].to_i
end

def self.map_items(casting_data)
  result = casting_data.map{|casting| Casting.new(casting_data)}
  return result
end

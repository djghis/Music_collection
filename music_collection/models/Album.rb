require('PG')
require_relative('../db/sql_runner')

class Album

  attr_reader :title, :genre, :artist_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @title = options['title'],
    @genre = options['genre'],
    @artist_id = options['artist_id'].to_i()
  end

  def save()
    sql = "INSERT INTO albums
    (
      title,
      genre,
      artist_id
      ) VALUES
      ($1, $2, $3
        )
        RETURNING id"
        values = [@title, @genre, @artist_id]
        results = SqlRunner.run(sql, values)
        @id = results[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM albums"
    albums = SqlRunner.run(sql)
    return albums.map { |album| Album.new(album)}
  end

end
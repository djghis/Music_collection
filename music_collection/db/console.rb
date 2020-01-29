require("pry")
require_relative("../models/artist")
require_relative("../models/album")

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => 'Dire Straits'
  })

  artist1.save()

artist2 = Artist.new({
  'name' => 'Pink Floyd'
  })

  artist2.save()

  album1 = Album.new({
    'title' => 'Brothers in Arms',
    'genre' => 'Rock and roll',
    'artist_id' => artist1.id
    })
album1.save()

album2 = Album.new({
  'title' => 'Brothers in Arms2',
  'genre' => 'Rock and roll',
  'artist_id' => artist1.id
  })
album2.save()

album3 = Album.new({
  'title' => 'Dark Side of the Moon',
  'genre' => 'Rock and roll',
  'artist_id' => artist2.id
  })
album3.save()


binding.pry
nil

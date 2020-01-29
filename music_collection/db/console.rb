require("pry")
require_relative("../models/artist")
require_relative("../models/album")

artist1 = Artist.new({
  'name' => 'Dire Straits'
  })

  artist1.save()

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


binding.pry
nil

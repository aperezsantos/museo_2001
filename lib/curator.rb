class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(artist_id)
    @artists.find do |artist|
      artist.id == artist_id
    end
  end

  def photographs_by_artist
    @artists.reduce({}) do |artist_and_photos, artist|
      artist_and_photos[artist] = find_artist_by_id(artist.id)
      artist_and_photos
      end
  end
end

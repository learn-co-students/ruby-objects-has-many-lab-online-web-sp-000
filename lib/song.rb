
#   describe '#artist_name' do
#     it 'knows the name of its artist' do
#       drake = Artist.new('Drake')
#       song.artist = drake
#     it 'returns nil if the song does not have an artist' do
#       expect(song.artist_name).to eq nil

class Song
  
  @@all = []
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist
      self.artist.name
    else
      nil
    end
  end
  
end

# hello = Song.new("Hello")
# hello.artist = "Adele"
# print Song.all

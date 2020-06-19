require 'pry'
require_relative "song.rb"

class Artist
attr_accessor :name, :songs
@@allsongs={}

def initialize(name)
  @songs=[]
  @name=name
end

def add_song(song)
@songs<<song
song.artist=self
@@allsongs[self.name]||=[]#for my extra method #songlist, if @@allsongs[self.name] is undefined, it will be set to an empty array
@@allsongs[self.name]<<song.name #for my extra method #songlist, pushing what I need to that array
end

def add_song_by_name(name)
  song=Song.new(name)
  @songs<<song
  song.artist=self
  @@allsongs[self.name]||=[] #for my extra method #songlist, if @@allsongs[self.name] is undefined, it will be set to an empty array
  @@allsongs[self.name]<<song.name #for my extra method #songlist, pushing what I need to that array


end

def self.song_count
  Song.all.size
end

def self.songlist
  #I also made this method for the situation
  #where there are more than one artist instance, to track what songs do all different artists make
  #it shows a hash which will show: {singer1=>songs,singer2=>songs...}
  @@allsongs
end




end

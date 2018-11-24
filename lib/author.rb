class Author
  attr_accessor :name, :posts

  @@post_count = 0
   def initialize(name)
    @name = name
    @posts = []
  end
   def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
   def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
   def self.post_count
    @@post_count
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

end

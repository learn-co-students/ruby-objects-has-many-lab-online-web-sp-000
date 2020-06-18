class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts 
    Post.all.select {|post| post.author == self}
  end  

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end

  # def add_song(song)
  #   song.artist = self
  # end

  # def add_song_by_name(name)
  #   song = Song.new(name)
  #   add_song(song)

  def self.post_count
    Post.all.count
  end

end
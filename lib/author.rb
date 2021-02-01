class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def add_post(title) #takes in the argument of a song name, creates a new song with it and associates the song and artist
    post.author = self
  end

  def posts #has many songs
    Post.all.select {|post| post.author == self}
  end

end

class Author
  attr_accessor :name, :posts, :post_count

  def initialize(name)
    @name = name
  end

  def add_post(title) #takes in the argument of a song name, creates a new song with it and associates the song and artist
    title.author = self
  end

  def posts #has many songs
    Post.all.select {|post| post.author == self}
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

  def self.post_count
    Post.all.count
  end

end

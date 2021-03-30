class Author 
  attr_accessor :name, :post, :author, :title

  def initialize(name)
    @name = name
  end

  def add_post(song)
    song.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Song.all.length()
  end
end
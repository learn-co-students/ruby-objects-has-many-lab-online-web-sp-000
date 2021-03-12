class Author

  attr_accessor :name, :post, :author, :genre, :title

@@all = []

  def initialize(name)
     @name = name
     @genre = genre
  end

  def add_post_by_title(title)
     post = Post.new(title)
     add_post(post)
  end

  def add_post(post)
   post.author = self
  end

 def posts
   Post.all.select {|post| post.author == self}
 end

 def self.post_count
   Post.all.count
 end

end

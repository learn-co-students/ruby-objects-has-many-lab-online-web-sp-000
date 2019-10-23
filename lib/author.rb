class Author
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all.select {|item| item.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    posting = Post.new(title)
    posting.author = self
  end
  
  def self.post_count
    count = 0
    @@all.each {|author|  count += author.posts.count}
    count
  end
  
end
class Author
  attr_accessor :name
  
  @@authors = []
  
  def initialize(name)
    @name = name
    @post_list = []
    @@authors << self
  end
  
  def posts
    @post_list
  end
  
  def add_post(posting)
    posting.author = self
    posts << posting
  end
  
  def add_post_by_title(post_name)
    posting = Post.new(post_name)
    posting.author = self
    posts << posting
  end
  
  def self.post_count
    count = 0
    @@authors.each {|author| count += author.posts.length}
    count
  end
end
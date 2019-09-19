class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name=name
  end
  
  def posts 
    Post.all.select{|posting| posting.author == self}
  end
  
  def add_post(posting)
    posting.author = self
  end
  
  def add_post_by_title(name)
    posting = Post.new(name)
    posting.author = self
  end
  
  def self.post_count
    Post.all.count 
  end
end
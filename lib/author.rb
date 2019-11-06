class Author 
  
#Author #name has an attr_accessor for name
  attr_accessor :name 
  
#Author #posts has many posts  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
 
 # Author #add_post takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
  def add_post(post)
    post.author = self
  end
  
# Author #add_post_by_title takes in an argument of a post title, creates anew post with it and associates the post and author
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
  end
  
#Author .post_count is a class method that returns the total number of posts associated to all existing authors
  def self.post_count
    Post.all.count
  end
  
end

  

  
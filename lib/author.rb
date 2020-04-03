require 'pry'

class Author

attr_accessor :name, :post

def initialize(name)
  @name = name 
end

def posts
  Post.all.select {|post| post.author == self}
end


def add_post(post)
  # 1) Author #add_post takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
  #   Failure/Error: betty.add_post(hello_world)
  post.author = self
  
 end
 
 def add_post_by_title(post_title)
   title_post = Post.new(post_title)
   title_post.author = self
   #binding.pry
 end 

def self.post_count 
  Post.all.count
  
  #1) Author .post_count is a class method that returns the total number of posts associated to #all existing authors
  
end




end
require 'pry'
class Author
 attr_accessor :name
 
   @posts=[]
 def initialize(name)
   @name = name
 end

 def posts
# binding.pry
    Post.all.select do |post|
      post.author == self
    end
  end

def add_post(post)
  post.author = self
end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
      Post.all.count
  end

end

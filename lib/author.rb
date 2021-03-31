class Author
  attr_accessor :name

  def initialize(name)
    @name=name
  end
  
  def add_post(post)
    post.author=self
  end
  
  def add_post_by_title(post_title)
    post_title=Post.new(post_title)
    post_title.author=self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    counter=0
    Post.all.each do |post| 
      if post.author
        counter+=1
      end
    end
    counter
  end
end
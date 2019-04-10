class Author
  attr_accessor :name, :posts
  @@postnumber=0

  def initialize(name)
    @name=name
    @posts=[]
  end

  def add_post(post)
    @posts<<post
    post.author=self
    @@postnumber+=1
  end

  def add_post_by_title(title)
    post=Post.new(title)
    @posts<<post
    post.author=self
    @@postnumber+=1
  end

  def self.post_count
    @@postnumber
  end


end

require "pry"

class Author
  attr_accessor :name, :title, :author
  attr_reader :posts
#  @@post_count = 0
  @@authors = []

  def self.all
    @@authors
  end

  def self.total_authors
    @@authors.size
  end

  def self.post_count
   self.all.collect {|a|a.posts}.flatten.count
  end

  def initialize(name)
    @@authors << self
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
   #binding.pry
  post = Post.new(post_title)
  post.author = self
  post.author_name = self
  end


  def posts
      Post.all.select {|a| a.author == self }

  end

  def post_count
   @@post_count = post_count
  end





end

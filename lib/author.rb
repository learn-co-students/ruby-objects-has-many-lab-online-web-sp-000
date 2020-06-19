require 'pry'

class Author
  attr_accessor :name 
  
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []  ## trying initializing the posts array in a different method => failed because it's not initalized until post is called, could be a work              ## around 
  end 
  
  def posts 
    @posts
  end 
  
  def add_post(post)
    @posts << post 
    post.author = self
    
    @posts.each do |post|
      @@posts << post
    end 
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post 
    post.author = self
    
    @posts.each do |post|
      @@posts << post
    end
  end 
  
  def self.post_count
    @@posts.count 
  end 
  
end

=begin 

=end 
  
class Post
  attr_accessor :author, :title  
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
   def author_name
    if author == nil
    else
      self.author.name
    end 
  end 
  
end

=begin 
describe '#author_name' do
    it 'knows the name of its author' do
      sophie = Author.new('Sophie')
      post.author = sophie
      expect(post.author_name).to eq('Sophie')
    end

    it 'returns nil if the post does not have an author' do
      expect(post.author_name).to eq nil
    end
  end
=end 
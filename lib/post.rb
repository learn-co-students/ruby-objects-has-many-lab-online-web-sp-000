require 'pry'

class Post

  attr_accessor :author, :title, :name

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    return @@all
  end

  def Post.post_count
    @@all.length
  end

  def author_name
  self.author.name if self.author
 end




end

class Post
  attr_accessor :title, :author
  
  @@posts = []
  
  def initialize(title)
    @@posts << self
    @title = title
  end
  
end
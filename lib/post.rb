class Post

  attr_accessor :title, :author                  #BELONGS to author
  @@all = []                         #class variable 'all posts' set to an array (@@all)

  def initialize(title)                    #is initialized with an argument of a title
    @title = title                         #has a title
    @@all << self                    #pushes new (self) instances in our class variable upon initialization
  end

  def self.all
    return @@all                     #returns the array of all post instances that have been created
  end

  def author_name
    self.author.name
  end
end

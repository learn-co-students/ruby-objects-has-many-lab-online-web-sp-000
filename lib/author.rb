class Author

  attr_accessor :name          #attribute for name
  @@all = []                  #class variable = to array

  def initialize(name)          #initialized with a name
    @name = name                #name instances set equal to our name attributes
    @@all << self              #'HAS MANY' posts. Equal to an array. ALL posts belong to author
  end

  def self.all
    return @@all
  end

  def posts
    Post.all.select {|post| post.author == self}      #HAS MANY posts
  end

  def add_post(post)            #argument of a post and associates that post with the author by telling the post that it belongs to that author
    post.author = self          #self here = author
  end

  def add_post_by_title(title)
    post = Post.new(title)           #creating a new instance of a post
    post.author = self               #Right here all we're doing is associating the objects its that simple
  end                                #this method doesnt need to return anything

  def self.post_count
    Post.all.count           #class method returning total number of posts associated to all existing authors
  end                         #using #count to return the number of elements in the array
end

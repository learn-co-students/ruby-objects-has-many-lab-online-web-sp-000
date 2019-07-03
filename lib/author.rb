class Author
  attr_accessor :name          #attribute for name

  def initialize(name)        #initialized with a name
    @name = name              #name instances set equal to our name attributes
    @posts = []               #'HAS MANY' posts. Equal to an array. ALL posts belong to author
  end

  def posts
    return @posts             #returns the posts (array)
  end

  def add_post(post)            #argument of a post and associates that post with the author by telling the post that it belongs to that author
    @posts << post
    post.author = self          #self here = author
  end

  def add_post_by_title(title)


  end
end

class Author
attr_accessor :name

def initialize(name)
  @name = name
  @posts = [] #artist initialized with array of empty songs
end

def add_post(post)
  @posts << post
  #we need to now tell the SONG that it belongs to the ARTIST
  post.author = self
end

def posts
  Post.all.select {|post| post.author == self }
end

def add_post_by_title(title)
  post = Post.new(title)
  add_post(post)
end

def self.post_count
  @posts.length
end


end

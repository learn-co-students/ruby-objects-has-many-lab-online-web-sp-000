class Post

attr_accessor :title, :author

@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def author_name(name = nil)
  if self.author
    self.author.name
end
end

def self.all
  @@all
end

end

class Post

@@all = []

attr_accessor :title, :author

def initialize(title)
  @title = title
  @author = nil
  save
end

def save
  @@all << self
end


def self.all
  return @@all
end

def author_name
  @author == nil ? nil : self.author.name
end


end

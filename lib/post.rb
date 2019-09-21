class Post

attr_accessor :author, :name

@@all = []

def initialize(name)
  @author = author
  @name = name
  save
end

def save
  @@all << self
end

def self.all
  @@all
end

def author_name
  if author
    self.author.name
  else
    nil
  end
end

end

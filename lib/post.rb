class Post
attr_accessor :title, :author
@@all = [] #this object is responsible for holding an array of all song instances that exist

def initialize(title)
  @title = title
  save
end

def save
  @@all << self #pushing this song into our array of all songs
end

def self.all
  @@all
end

def self.title
  @title
end

def self.author
  self.author
end

def author_name
  if author
      self.author.name
    else
      nil
    end
  end


end #end of class

require 'pry'

class Post 
 attr_accessor :title, :author 
  @@all = [] 
  
  def initialize(title)
    @title = title  
    save 
  end 
  
  def author_name
    if self.author != nil 
      self.author.name 
  end 
end 


  def save 
    @@all << self
  end 
   
  def self.all 
    @@all
  end 
end 



# Hi, I'm still having trouble with the author_name method and the song_name method and could use some help. 

# 1) Post #author_name returns nil if the post does not have an author
#     Failure/Error: self.author.name

#     NoMethodError:
#       undefined method `name' for nil:NilClass
#     # ./lib/post.rb:15:in `author_name'
#     # ./spec/post_spec.rb:55:in `block (3 levels) in <top (required)>'

#   2) Song #artist_name returns nil if the song does not have an artist
#     Failure/Error: self.artist.name

#     NoMethodError:
#       undefined method `name' for nil:NilClass
#     # ./lib/song.rb:11:in `artist_name'
#     # ./spec/song_spec.rb:55:in `block (3 levels) in <top (required)>'





# sure thing. I would start with self.author
# HELEN HARMAN 14 MINUTES AGO
# #author => nil self.author.name => "Sophie" I can't use name because the only time this is mentioned is the attr_accessor
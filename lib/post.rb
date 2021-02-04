require 'pry'

class Post 
 attr_accessor :title, :author 
  @@all = [] 
  
  def initialize(title)
    @title = title  
    save 
  end 
  
  def author_name(author=nil)
    #author => nil
    #self => #<Post:0x0000000001d5f5d8  @author=#<Author:0x0000000001d5f268 @name="Sophie">,  @title="My Blog Post!">
    #self.author.name
    #self.author.name => "Sophie"
    self.author
  end 
    
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
end 



# Hi, I'm still having trouble with the author_name method and the song_name method and could use some help. 
# User avatar
# Trevor Tarpinian 28 MINUTES AGO
# Hi Helen, how are you?
# HELEN HARMAN 28 MINUTES AGO
# Hi, Trevor, I'm fine, how are you?
# User avatar
# HELEN HARMAN 24 MINUTES AGO
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

# Finished in 0.01696 seconds (files took 0.32116 seconds to load)
# 28 examples, 2 failures
# User avatar
# User avatar
# Trevor Tarpinian 23 MINUTES AGO
# doing well, thank you!
# User avatar
# Trevor Tarpinian 23 MINUTES AGO
# It's a little busy here with student questions at the moment. apologies for any delayed responses
# HELEN HARMAN 23 MINUTES AGO
# that's ok
# User avatar
# User avatar
# Trevor Tarpinian 23 MINUTES AGO
# let's take a look at this method error
# User avatar
# Trevor Tarpinian 23 MINUTES AGO
# if you get this error and you believe that name is method
# User avatar
# Trevor Tarpinian 23 MINUTES AGO
# then the thing you are calling it on is possibly broken...and causing the methodError
# HELEN HARMAN 22 MINUTES AGO
# ok, let me look at the rest of my program
# User avatar
# User avatar
# Trevor Tarpinian 20 MINUTES AGO
# sure thing. I would start with self.author
# HELEN HARMAN 14 MINUTES AGO
# #author => nil self.author.name => "Sophie" I can't use name because the only time this is mentioned is the attr_accessor
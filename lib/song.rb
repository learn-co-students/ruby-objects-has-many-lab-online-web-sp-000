class Song

  @@all = 0
  attr_accessor :title

  def initialize(title)
    @title = title
    @@all += 1
  end

end

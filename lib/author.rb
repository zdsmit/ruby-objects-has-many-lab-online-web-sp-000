class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@posts << self
  end

  def self.all
    @@posts
  end

  def posts
    Post.all.select {|post|post.author == self}
  end

end

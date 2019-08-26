class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
    @@posts << self
  end

  def posts
    Post.all.select {|post|post.author == self}
  end

end

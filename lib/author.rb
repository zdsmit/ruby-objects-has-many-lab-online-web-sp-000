class Author
  attr_accessor :name
  @@all = []
  @posts = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select {|post|post.author == self}
  end

  def add_post(post)
    post.author == self
    @posts << post
  end

end

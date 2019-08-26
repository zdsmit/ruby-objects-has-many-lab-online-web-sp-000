class Author
  attr_accessor :name
  @@all = []

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
    post.author = self
  end

  def add_post_by_name(title)
    post = Post.new(title)
    post.author = self
  end

end

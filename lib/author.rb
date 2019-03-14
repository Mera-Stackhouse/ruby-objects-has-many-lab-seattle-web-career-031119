require_relative './song'


class Author

  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def shovel(post)
    @posts << post
    @@count += 1
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    shovel(post)
  end

  def add_post_by_title(post_title)
    instance = Post.new(post_title)
    instance.author = self
    shovel(instance)
  end

  def self.post_count
    @@count
  end

end

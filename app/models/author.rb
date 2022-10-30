class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  
  end
  def articles
    Article.all.filter {|article| article.author == self}
  end
  def magazines
    self.articles.map {|article| article.magazine}.uniq
  end
end

require_relative './article'
class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.filter {|article| article.magazine == self}
  end

  def contributors
    self.articles.map {|article| article.author}.uniq
  end
  def contributing_authors
    self.contributors.filter {|author|author.articles.count > 2}
  end 
  def self.all
    @@all
  end

end

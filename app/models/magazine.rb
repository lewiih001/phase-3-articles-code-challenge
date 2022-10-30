require_relative './article'
class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category

  end


end

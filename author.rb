class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def articles
      # Retrieve all articles associated with this author
      Article.all.select { |article| article.author == self }
    end
  
    def magazines
      # Retrieve all magazines that the author has contributed to
      articles.map { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      # Create a new article and associate it with this author
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      # Retrieve the unique categories of the magazines the author has contributed to
      magazines.map { |magazine| magazine.category }.uniq
    end
end
  
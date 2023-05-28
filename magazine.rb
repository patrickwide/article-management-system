class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
    end
  
    def self.all
      # Retrieve all instances of the Magazine class
      @@all
    end

    def contributors
        Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end
  
    def self.find_by_name(name)
      # Find a magazine instance by its name
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      # Retrieve the titles of all articles written for this magazine
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
  
    def contributing_authors
      # Retrieve authors who have written more than 2 articles for this magazine
      contributors.group_by(&:itself).select { |author, articles| articles.length > 2 }.keys
    end
  end
  
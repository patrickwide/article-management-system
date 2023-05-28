class Magazine
    attr_accessor :name, :category
  
    def initialize(name, category)
      @name = name
      @category = category
    end

    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
    end

    def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title }
      end
    
      def contributing_authors
        contributors.group_by(&:itself).select { |author, articles| articles.length > 2 }.keys
    end
end
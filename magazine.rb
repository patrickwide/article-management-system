class Magazine
    attr_accessor :name, :category
  
    def initialize(name, category)
      @name = name
      @category = category
    end

    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
    end
end
  
require_relative 'author'
require_relative 'magazine'
require_relative 'article'

# Create instances of authors
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

# Create instances of magazines
magazine1 = Magazine.new("Magazine A", "Category A")
magazine2 = Magazine.new("Magazine B", "Category B")

# Create instances of articles
article1 = Article.new(author1, magazine1, "Article 1")
article2 = Article.new(author2, magazine1, "Article 2")
article3 = Article.new(author1, magazine2, "Article 3")

# Test the methods

# Author methods
puts "Author: #{author1.name}"
puts "Author's articles: #{author1.articles.map(&:title)}"
puts "Author's magazines: #{author1.magazines.map(&:name)}"
author1.add_article(magazine1, "New Article")
puts "Author's articles after adding a new article: #{author1.articles.map(&:title)}"
puts "Author's topic areas: #{author1.topic_areas}"
puts ""

# Magazine methods
puts "Magazine: #{magazine1.name}"
puts "Magazine's contributors: #{magazine1.contributors.map(&:name)}"
puts "Magazine's article titles: #{magazine1.article_titles}"
puts "Magazine's contributing authors: #{magazine1.contributing_authors.map(&:name)}"
puts ""

# Article methods
puts "Article: #{article1.title}"
puts "Article's author: #{article1.author.name}"
puts "Article's magazine: #{article1.magazine.name}"

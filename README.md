# Magazine Management System

The Magazine Management System is a Ruby application that allows users to manage authors, magazines, and articles within a magazine publishing company. It provides functionality to create authors, magazines, and articles, retrieve information about them, and perform various operations related to their relationships.

## Installation

1. Clone the GitHub repository: `git clone https://github.com/patrickwide/article-management-system.git`
2. Navigate to the project directory: `cd article-management-system`

## Usage

To run the application, execute the following command:

```bash
ruby run.rb
```

The run file will create instances of authors, magazines, and articles, and test various methods to retrieve and manipulate data from these objects.

## Classes and Methods

### Author

- `initialize(name)`: Creates a new author with the specified name.
- `name`: Returns the name of the author.
- `articles`: Returns an array of Article instances written by the author.
- `magazines`: Returns a unique array of Magazine instances the author has contributed to.
- `add_article(magazine, title)`: Creates a new Article instance associated with the author and the specified magazine and title.
- `topic_areas`: Returns a unique array of strings representing the categories of magazines the author has contributed to.

### Magazine

- `initialize(name, category)`: Creates a new magazine with the specified name and category.
- `name`: Returns the name of the magazine.
- `category`: Returns the category of the magazine.
- `self.all`: Returns an array of all Magazine instances.
- `self.find_by_name(name)`: Returns the first Magazine instance that matches the specified name.
- `article_titles`: Returns an array of strings representing the titles of all articles written for the magazine.
- `contributing_authors`: Returns an array of authors who have written more than two articles for the magazine.

### Article

- `initialize(author, magazine, title)`: Creates a new article with the specified author (Author object), magazine (Magazine object), and title.
- `author`: Returns the author of the article.
- `magazine`: Returns the magazine of the article.
- `title`: Returns the title of the article.
- `self.all`: Returns an array of all Article instances.

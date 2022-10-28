class Author
    attr_reader :name
  
    @@all=[]
    def initialize(name)
      @name = name
      @@all<<self
    end
    def self.find_by_name(name)
      Author.all.find{|magazine|magazine.name==name}
    end
    
    def self.all
      @@all
    end
    def articles
      # filter from all articles; articles the have article.author==self.name
      Article.all.filter{|article|article.author==@name}
    end
    def magazines
      # get magazine instances from article
      articles.map{|article|article.magazine}.uniq
    end
    def add_article(magazine, title)
      Article.new(self,magazine,title)
    end
    
    def topic_areas
      magazines.map{|magazine|magazine.category}.uniq
    end
  end
  # article cannot exist without an author;cannot exist without an magazine;
  # author can write for a magazine that does not exist
  # magazine cannot exist without articles
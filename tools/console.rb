require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

article1=Author.new("Author1")
magazine1=Magazine.new("Magazine1","Category1")
magazine2=Magazine.new("Magazine2","Category1")
magazine3=Magazine.new("Magazine3","Category2")
artic1=Article.new(article1,magazine1,"Title1")
artic2=Article.new(article1,magazine1,"Title2")
article1.add_article(magazine1,"Title3")
article1.add_article(magazine1,"Title6")
article1.add_article(magazine1,"Title7")
article1.add_article(magazine2,"Title4")
article1.add_article(magazine3,"Title5")







### DO NOT REMOVE THIS
binding.pry

0
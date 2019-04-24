require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
  	self.end_with?("?")
  end

  def exclamation?
  	self.end_with?("!") ? true : false
  end

  def count_sentences
  	words = self.split(" ")
  	i = 0
  	words.each do |words|
  		if words.sentence? || words.question? || words.exclamation? 
  			i +=1
  		end
  	end
  	i
  end

end
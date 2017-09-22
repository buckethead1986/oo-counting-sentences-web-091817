require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # self.slice(-1) == "." #other method
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences #how do I split along '.' but not '...' in one line?
    self.split(/[.!?]/).reject {|element| element.empty? }.count #'reject' and 'empty?'removes blank '""' elements from the array (takes care of multiple !!, ...).
  end
end

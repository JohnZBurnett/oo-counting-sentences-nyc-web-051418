require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    sentences.reject! do |sentence|
      sentence.empty?
    end
    sentences.length
  end
end

test_str = "This is a sentence. This is an emphatic sentence!! This is a querulous sentence?"
test_str.count_sentences

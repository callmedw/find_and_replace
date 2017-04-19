class String
  define_method(:find_and_replace) do |searched_word, replaced_word|
    new_sentence = ''
    if self.downcase().include?(searched_word)
      new_sentence = self.downcase().gsub! searched_word, replaced_word
      print new_sentence
    end
    new_sentence.capitalize()
  end
end

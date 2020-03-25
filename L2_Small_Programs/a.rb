def a(sentence)
  words = sentence.split
  p saved_word = words.shift

  words.each do |word|
    if word.length >= saved_word.length
      saved_word = word
      saved_word
    end
  end

  p saved_word
end

a("The electric guitar has a very well established musical vocabulary.")
class String
  define_method(:pecker_picker) do |pick|
    prose_input = self
    counter = 0
    word = pick

    split_words = prose_input.split(' ')

    split_words.each do |word|
      if word == pick
        counter += 1
      end
    end
    return counter
  end
end

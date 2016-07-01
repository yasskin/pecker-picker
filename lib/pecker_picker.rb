class String
  define_method(:pecker_picker) do |pick|
    prose_input = self
    counter = 0

    split_words = prose_input.split(' ')
    split_words.each
    if split_words = pick
      counter =+ 1
    end
    return counter
  end
end

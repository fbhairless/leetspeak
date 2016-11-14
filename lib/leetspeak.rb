class String
  define_method(:leetspeak) do
    words = self.split(" ")
    fixed_string = []
    words.each() do |word|
      letters = word.split("")
      fixed_letters = []
        if letters[0].eql?("s")
          fixed_letters.push("s")
          letters.shift
        end
      letters.each() do |letter|
        if letter.eql?("e")
          fixed_letters.push("3")
        elsif letter.eql?("o")
          fixed_letters.push("0")
        elsif letter.eql?("I")
          fixed_letters.push("1")
        elsif letter.eql?("s")
          fixed_letters.push("z")
        else
          fixed_letters.push(letter)
        end
      end
      new_words = fixed_letters.join("")
      fixed_string.push(new_words)
    end
    fixed_string.join(" ")
  end
end

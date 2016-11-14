class String
  define_method(:leetspeak) do
    letters = self.split("")
    fixed_letters = []
    letters.each() do |letter|
      if letter.eql?("e")
        fixed_letters.push("3")
      elsif letter.eql?("o")
        fixed_letters.push("0")
      elsif letter.eql?("I")
        fixed_letters.push("1")
      elsif letter.eql?("s") && letter != letters[0]
        fixed_letters.push("z")
      else
        fixed_letters.push(letter)
      end
    end
    fixed_letters.join("")
  end
end

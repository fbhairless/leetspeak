class String
  define_method(:leetspeak) do
    letters = self.split("")
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
      # elsif letter.eql?("s") && it is at index 0
      #   fixed_letters.push("s")
    elsif letter.eql?("s")
        fixed_letters.push("z")
      else
        fixed_letters.push(letter)
      end
    end
    fixed_letters.join("")
  end
end

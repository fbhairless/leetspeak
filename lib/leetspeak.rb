class String
  define_method(:leetspeak) do
    letters = self.split("")
    fixed_letters = []
    letters.each() do |letter|
      if letter.eql?("e")
        fixed_letters.push("3")
      else
        fixed_letters.push(letter)
      end
    end
    fixed_letters.join("")
  end
end

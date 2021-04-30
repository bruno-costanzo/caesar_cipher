def caesar_cipher (string, shift)
  letters = ("a".."z").to_a
  cripted_string = string.downcase.split("").map do |char|
    if letters.index(char) == nil
      char
    else
      letters[(letters.index(char) + shift) % letters.size]
    end
  end
  cripted_string.join.capitalize
end


puts caesar_cipher("What a string!", 5)
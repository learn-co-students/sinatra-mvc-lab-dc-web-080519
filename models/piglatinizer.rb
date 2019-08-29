require 'byebug'

class PigLatinizer

  attr_accessor :phrase

  def piglatinize(string)
    counter = 0
    piglatinized = []
    words = string.split
    while counter < words.length
      letters = words[counter].split("")
      #binding.pry
      if "aeiou".include?(letters[0].downcase)
      # VOWEL CHECK
        piglatinized << words[counter] + "way"
      else
      # CONSONANT CHECK
        letters.each_with_index do |letter, index|
          if "aeiouy".include?(letter.downcase)
            if index == 0
              index += 1
            end
            piglatinized << letters.shift(index).unshift(letters).flatten.join + "ay"
            break
          end
        end
      end
    counter += 1
    end
    piglatinized.join(" ")
  end

end

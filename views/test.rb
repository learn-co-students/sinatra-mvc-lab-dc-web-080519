require 'pry'

phrase1 = "Flatiron School"
phrase2 = "Big Apple"
phrase3 = "Yellow Bellied Dragon         Killer"
letters = phrase3.split[0].split("")

def piglatinizer(string)
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
        if "aeiou".include?(letter.downcase)
          #inding.pry
          piglatinized << letters.shift(index).unshift(letters).flatten.join.downcase.capitalize + "ay"
          break
        end
      end
    end
  counter += 1
  end
  piglatinized.join(" ").downcase
end

puts piglatinizer("Flatiron School Loloa")

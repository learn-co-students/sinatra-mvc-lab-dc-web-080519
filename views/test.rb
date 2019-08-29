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
    if "aeiou".include?(letters[0].downcase)
    # VOWEL CHECK
      piglatinized << words[counter] + "way"
    else
    # CONSONANT CHECK
      letters.each_with_index do |letter, index|
        if "aeiou".include?(letter.downcase)
          binding.pry
          letters.shift(index).unshift(letters).flatten.join + "ay"
        end
      end
    end
  counter += 1
  end
  print piglatinized
end

puts piglatinizer("Big Apple")

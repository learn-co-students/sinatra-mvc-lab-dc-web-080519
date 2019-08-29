require 'pry'
class PigLatinizer
  # < ActiveRecord::Base

  attr_accessor :user_phrase
  # def initialize(user_phrase)
  #   @user_phrase = user_phrase
  #
  # end

  #split phrase into words
  def split_phrase(phrase)
    words_array = phrase.split
  end

  #pg each word
  def pg_word(word)
  #if starts with vowel, add "way" to end - done
    if word.start_with?(/([aeiou].*)/i)
      word + "way"
  #if else, splits word at 1st vowel, moves beginning const. to end, adds "ay"
    else
      parts = word.split(/([aeiouy].*)/i)
      parts[1] + parts[0] + "ay"
    end
  end

  def piglatinize(user_phrase)
    by_word = split_phrase(user_phrase)

    pg_array = by_word.map {|word| self.pg_word(word)}

    pg_array.join(" ")
  end

end

# pg = PigLatinizer.new
#
# # puts pg.piglatinize("the rain in spain")
# puts pg.piglatinize("My sHoes are soaked")
# puts pg.piglatinize("Marisa Canan-Zucker")
# puts pg.piglatinize("Pete Hanner")
# # puts pg.piglatinize("the rain in spain")
# # puts pg.piglatinize("the rain in spain")
# # puts pg.piglatinize("the rain in spain")

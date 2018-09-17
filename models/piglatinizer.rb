require 'pry'

class PigLatinizer

  VOWELS = ["a", "e", "i", "o", "u"]
  DOUBLES = ["pl", "th", "pr", "sk", "wh"]
  TRIPLES = ["spr", "str"]

  def word_piglatinize(word)
    if VOWELS.include?(word[0].downcase)
      word + "way"
    elsif DOUBLES.include?(word[0..1].downcase)
      word_array = word.split("")
        2.times do
          first_letter = word_array.shift
          word_array << first_letter
        end
        word_array.join + "ay"
    elsif TRIPLES.include?(word[0..2].downcase)
        word_array = word.split("")
        3.times do
          first_letter = word_array.shift
          word_array << first_letter
        end
        word_array.join + "ay"
    else
        word_array = word.split("")
        first_letter = word_array.shift
        word_array << first_letter
        word_array.join + "ay"
    end
  end

  def piglatinize(input)
    if input.include?(" ")
      words_array = input.split(" ")
      changed_words_array = []
      words_array.each do |word|
          changed_words_array << word_piglatinize(word)
      end
      changed_words_array.join(" ")
    else
      word_piglatinize(input)
    end
  end

end

require "pry"
class PigLatinizer
  attr_reader :text

  def initialize(*words)
    @words = words
  end

  def slicer(word)
    part_one = word.slice!(/([aeiou].*)/)
    part_one + word + "ay"
  end

  def arr_split(array)
    word = array.split(" ")
    word.map do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    if word.split(" ").length > 1
      arr_split(word)
    else
      if word.downcase.start_with?(/[aeiou]/)
        word + "way"
      else
        slicer(word)
      end
    end
  end

end

class PigLatinizer

  def initialize
  end

  def piglatinize(word)

    if word.split.length > 1
    word.split.map {|word|convert(word)}.join(" ")
    else
      convert(word)
    end

  end


  def convert(word)

    vowels = ["a","e","i","o","u"]

    if vowels.include?(word.split("").first.downcase)
      new_word = word + "way"
      new_word
    else
      c = constant_counter(word)
      new_word = word[c..word.length] + word.split("")[0...c].join + "ay"
      new_word
    end

  end


  def constant_counter(word)

    vowels = ["a","e","i","o","u"]
    count = 0

    word.split("").each do |letter|

      if vowels.include?(letter)
        break
      else
        count +=1
      end

    end
    count
  end

end

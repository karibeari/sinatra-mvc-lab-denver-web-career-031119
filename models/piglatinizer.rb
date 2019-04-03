class PigLatinizer



  def piglatinize(text)
    text.split(" ").map do |word|
      # binding.pry

      if word.match(/\A[aeiou]/i)
        word + 'way'
      elsif word.match(/\A[^aeiou]{2,}/i)
        first_two_letters = word.slice!(/\A[^aeiou]{2,}/i)
        word + first_two_letters + 'ay'
      else
        first_letter = word.slice!(0)
        word + first_letter + 'ay'
      end
    end.join(' ')


  end

end

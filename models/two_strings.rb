class TwoFancyStrings

  def initialize (string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def equal
    if @string1 == @string2
      return "String 1: #{@string1} is equal to String 2: #{@string2}"
    else
      return "String 1: #{@string1} is not equal to String 2: #{@string2}"
    end
  end

  def anagram
    if @string1.chars.sort.join == @string2.chars.sort.join
      return "#{@string2} is an anagram of #{@string1}"
    else
      return "#{@string2} is not a anagram of #{@string1}"
    end
  end

end

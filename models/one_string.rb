class OneFancyString

  def initialize (string1)
    @string1 = string1
  end

  def palindrome
    if @string1 == @string1.reverse
      return "#{@string1} is a palindrome"
    else
      return "#{@string1} is not a palindrome"
    end
  end

  def isogram
    if @string1.chars == @string1.chars.uniq
      return "#{@string1} is an isogram"
    else
      return "#{@string1} is not an isogram"
    end
  end

end

require "set"

class Kata

  DEFAULT_MATCHES = {
    ")" => "(",
    "}" => "{",
    "]" => "["
  }

  attr_reader :matching_chars
  
  def initialize(matching_chars = DEFAULT_MATCHES)
    @matching_chars = matching_chars
  end 

  def is_balanced_braces(str)
    stack = []
    allowed_chars = matching_chars.to_a.flatten

    str.split("").select{|c| allowed_chars.include?(c)}.each do |c|
      if matching_chars.values.include? c
        stack << c
      elsif is_matching(stack.last, c)
        stack.pop
      else
        return false
      end 
    end

    stack.empty?
  end

  def is_matching(opening, closing)
    opening == matching_chars[closing]
  end
end
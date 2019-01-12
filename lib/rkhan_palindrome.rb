require "rkhan_palindrome/version"

module RKhanModulePalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include RKhanModulePalindrome
end

class Integer
  include RKhanModulePalindrome
end

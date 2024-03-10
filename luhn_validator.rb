# frozen_string_literal: true

# Luhn Algorithm
module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)

    # TODO: use the integers in nums_a to validate its last check digit
    reverse_num = nums_a.reverse

    total = 0
    reverse_num.each_with_index do |num, index|
      num *= 2 if index.odd?
      num -= 9 if num > 9
      total += num
    end
    (total % 10).zero?
  end
end

#require "byebug"

def first_anagram?(str, sub)
  return false unless str.length == sub.length
  anagrams = anagrams(str)
  anagrams.include?(sub)
end

def anagrams(str)
  return [str] if str.length <= 1
  first_letter = str[0]
  anagrams = anagrams(str[1..-1])
  all_anagrams = []
  anagrams.each do |anagram|
    (0..anagram.length).each do |i|
      all_anagrams << anagram[0...i] + first_letter + anagram[i..-1]
    end
  end
  all_anagrams
end

def second_anagram?(str, substring)
  return false unless str.length == substring.length
  sub_copy = substring.dup
  str.each_char do |char|
    sub_copy.delete!(char) if substring.include?(char)
  end
  sub_copy.empty?
end


def third_anagram?(str, substring)
  return false unless str.length == substring.length
  sorted_str = str.chars.sort
  sorted_sub = substring.chars.sort
  sorted_str == sorted_sub
end


def fourth_anagram?(str, substring)
  return false unless str.length == substring.length
  str_hash = Hash.new(0)
  substring_hash = Hash.new(0)
  (0..str.length - 1).each do |i|
    str_hash[str[i]] += 1
    substring_hash[substring[i]] += 1
  end
  str_hash == substring_hash
end

def fourth_anagram?(str, substring)
  return false unless str.length == substring.length
  letter_cnt = Hash.new(0)
  (0..str.length - 1).each do |i|
    letter_cnt[str[i]] += 1
    letter_cnt[substring[i]] -= 1
  end
  letter_cnt.values.all? { |value| value == 0 }
end

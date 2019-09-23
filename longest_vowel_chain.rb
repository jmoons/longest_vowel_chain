VOWELS = ["a", "e", "i", "o", "u"]

test_word                 = "chocolicious"
longest_vowel_chain_array = []
working_vowel_chain_array = []

test_word.split('').each do | test_character |

  if VOWELS.include?( test_character )
    working_vowel_chain_array << test_character
  else
    longest_vowel_chain_array = working_vowel_chain_array if working_vowel_chain_array.length > longest_vowel_chain_array.length
    working_vowel_chain_array = []
  end

end

puts "Test Word:                  #{test_word}"
puts "Longest Vowel Chain:        #{longest_vowel_chain_array.inspect}"
puts "Longest Vowel Chain Length: #{longest_vowel_chain_array.length.inspect}"

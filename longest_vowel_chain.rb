VOWELS = ["a", "e", "i", "o", "u"]

test_word                 = "chocolicious"
vowel_chain_array         = []
working_vowel_chain_array = []

test_word.split('').each do | test_character |

  if VOWELS.include?( test_character )
    working_vowel_chain_array << test_character
  else
    vowel_chain_array << working_vowel_chain_array if working_vowel_chain_array.length > 0
    working_vowel_chain_array = []
  end

end

longest_vowel_chain = []
vowel_chain_array.each do | vowel_chain |
  longest_vowel_chain = vowel_chain if vowel_chain.length > longest_vowel_chain.length
end

puts "Test Word:                  #{test_word}"
puts "Longest Vowel Chain:        #{longest_vowel_chain.inspect}"
puts "Longest Vowel Chain Length: #{longest_vowel_chain.length.inspect}"

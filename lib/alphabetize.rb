# Method takes an array of strings and converts each char into
# that chars place in the esparanto alphabet. Then returns a hash
# of string phrase keys and array int values

def convert_to_int(arr_of_phrases)
  # Hard code Esparanto dictionary in array. Is this already provided?
  esperanto_alphabet = ["a", "b", "c", "ĉ", "d", "e", "f", "g", "ĝ", "h", "ĥ",
    "i", "j", "ĵ", "k", "l", "m", "n", "o", "p", "r", "s", "ŝ", "t", "u", "ŭ", "v", "z"]

  # Create conversion result array
  converted_str = []

  # Create return hash
  converted_names = {}

  # Collect ints converted from index in esparanto alphabet
  converted_str = arr_of_phrases.collect do |letter|
    esperanto_alphabet.index_of(letter)
  end

  # Join converted phrase arrays to phrase strings in hash
  arr_of_phrases.each_with_index do |phrase, index|
    converted_names[phrase] = converted_str[index]
  end
  puts converted_names
  return converted_names
end

convert_to_int(["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"])

def alphabetize(arr)
  arr.sort_by {|word| word[0] }
end

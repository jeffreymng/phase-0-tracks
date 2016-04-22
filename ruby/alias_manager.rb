# define a method that swaps the first and last name, changes all vowels to next vowel, and changes all consonants to next consonant
# define variables for vowels and consonants for .index use
# define a method that takes one argument (a string)
# change all letters in string to lowercase
# separate first and last name using .split(' ') and reorder them
# change array back to string
# separate each letter in the string into an array using .split or .chars
# use .each to compare each letter in the array to vowels and consonants
# advance vowels one letter forward and advance consonants one letter forward. if empty space, return empty space
# create conditional statements for letters 'u' and 'z' to advance to 'a' and 'b', respectively, to deal with edge case
# put the letters back together to form a name
# capitalize the new name
# provide a user interface that lets a user enter a name and get a fake name back. loop until user types in 'quit'


def alias_manager(name)
  changed_alias = []
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'
  original_alias = name.downcase.split(' ').reverse.join(' ').chars
  original_alias.each do |original_alias|
    if original_alias.include?('a') || original_alias.include?('e') || original_alias.include?('i') || original_alias.include?('o')
      vowel_index = vowels.index(original_alias) + 1
      changed_alias << vowels[vowel_index]
    elsif original_alias.include?(' ')
      changed_alias << ' '
    elsif original_alias.include?('z')
      changed_alias << 'b'
    elsif original_alias.include?('u')
      changed_alias << 'a'
    else
      consonant_index = consonants.index(original_alias) + 1
      changed_alias << consonants[consonant_index]
    end
  end
  new_alias = changed_alias.join('').split(' ')
  new_alias.each do |new_alias|
    new_alias.capitalize!
  end
  new_alias.join(' ')
end

p alias_manager("Feliciu Torrez")
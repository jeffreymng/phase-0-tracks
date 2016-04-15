# define method to move every letter of a string one letter forward
# add counter
# add conditional logic to deal with the letter z
# advance letter one letter forward if not z
# advance counter
# output encrypted phrase

def encrypt(encrypt_phrase)
  loop_counter = 0
  while loop_counter < encrypt_phrase.length
    current_letter = encrypt_phrase[loop_counter]
    if current_letter == "z"
      encrypt_phrase[loop_counter] = "a"
    else
      encrypt_phrase[loop_counter] = encrypt_phrase[loop_counter].next
    end
    loop_counter += 1
  end
 encrypt_phrase
end

# p encrypt("abc")
# p encrypt("zed")

# define method to move letters in a string one letter backwards
# define alphabet
# add counter
# define decrypted result to add to
# add conditional logic for letter a to add z instead
# compare current letter to alphabet index number and subtract 1
# add to decrypted result
# advance counter
# output decrypted phrase

def decrypt(encoded_phrase)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  loop_counter = 0
  decrypted_result = ""
  while loop_counter < encoded_phrase.length
    current_index = alphabet.index(encoded_phrase[loop_counter])
    current_letter = encoded_phrase[loop_counter]
    if current_letter == 'a'
      decrypted_result += 'z'
    else
      previous_letter = alphabet[current_index - 1]
      decrypted_result += previous_letter
    end
    loop_counter += 1
  end
  decrypted_result
end

# p decrypt("bcd")
# p decrypt("afe")

# p decrypt(encrypt("swordfish"))
# This nested call method works because the encrypt method has an implicit return that is not shown that is then used by the decrypt method and then printed out.

# ask user if they want to decrypt or encrypt a password
# retrieve answer
# ask user for password
# retrieve password
# apply conditional logic to use decrypt or encrypt methods based on answer
# run decrypt or encrypt method on password
# based on answer for decrypt or encrypt, print result from password

puts "Would you like to encrypt or decrypt a password?"
encrypt_decrypt = gets.chomp.downcase
puts "What is the password you would like to #{encrypt_decrypt}?"
agent_password = gets.chomp
if encrypt_decrypt == "encrypt"
  p encrypt(agent_password)
else
  p decrypt(agent_password)
end
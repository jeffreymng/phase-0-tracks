def encrypt(encrypt_phrase)
  loop_counter = 0
  while loop_counter < encrypt_phrase.length
    current_letter = encrypt_phrase[loop_counter]
    if current_letter == "z"
      encrypt_phrase[loop_counter] = "a"
    else
      encrypt_phrase[loop_counter] = encrypt_phrase[loop_counter].next
    end
    loop_counter +=1
  end
 encrypt_phrase
end

p encrypt("abc")
p encrypt("zed")

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

p decrypt("bcd")
p decrypt("afe")
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
# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# “iNvEsTiGaTiOn”.<???>
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# “zom”.<???>
"zom".insert(1,"o")
# => “zoom”

# “enhance”.<???>
"enhance".center(15)
#=> “    enhance    ”

# “Stop! You’re under arrest!”.<???>
"Stop! You’re under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

# “the usual”.<???>
"the usual".concat(" suspects")
"the usual".insert(9, " suspects")
#=> “the usual suspects”

#“ suspects”.<???>
" suspects".prepend("the usual")
" suspects".insert(0, "the usual")
#=> “the usual suspects”

# “The case of the disappearing last letter”.<???>
"The case of the disappearing last letter".chop
# => “The case of the disappearing last lette”

# “The mystery of the missing first letter”.<???>
"The mystery of the missing first letter".slice(1, 38)
# => “he mystery of the missing first letter”

# “Elementary  ,    my   dear      Watson!”.<???>""
"Elementary  ,    my   dear      Watson!".squeeze
# => “Elementary, my dear Watson!”

#“z”.<???>
"z".codepoints
# => 122
# (What is the significance of the number 122 in relation to the character z?) Returns the unicode of the letter

#“How many times does the letter ‘a’ appear in this string?”.<???>
"How many times does the letter ‘a’ appear in this string?".count("a")
#=> 4
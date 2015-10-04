def Caesar_cipher(string, n)
# implements a new method called Caesar_cipher that initializes with two variables
  uppercase = ('A'..'Z').to_a
  #puts the uppercase alphabet into a variable called uppercase
  lowercase = ('a'..'z').to_a
  #puts the lowercase alphabet into a variable called lowercase
  string = string.codepoints.to_a
  string.each_with_index do |c, i|
    #enumerates the string with two arguments, the item and its index
    if(uppercase.include? c.chr)
      #checks to see if the uppercase array includes the current item
      string[i] = (c+(n)-65) % 26 + 65
      #changes the value of the item with an index of 'i' to add the key
      #must subtract 65 and add it again because ASCII value 65 equals 'A'
    end
    if(lowercase.include? c.chr)
    #checks to see if the lowercase array contains the current item
      string[i] = (c+(n)-97) % 26 + 97
      #adds the key to the ASCII value of the current letter
    end
    string[i] = string[i].chr
    #converts the item with index of 'i' into a letter again
  end

  puts string.join("")

  #joins the letters again
end

Caesar_cipher("Watch me whip, now watch me naynay", 300)
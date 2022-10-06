def caesar_cipher(string, shift) 
  for i in 0...string.length do
    char = string[i].ord 
   
    (a,z) = case char
            when 97..122 then [97,122]
            when 65..90 then [65, 90]
            else next
    end

    move = shift > 0 ? 26 : -26

    char += shift
    char -= move unless char.between?(a,z)

    string[i] = char.chr
  end
end

msg = "FuCK"

caesar_cipher(msg, 5)
 puts msg
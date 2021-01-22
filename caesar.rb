def caesar_cipher(msg, shift)
  if (shift < 26)
  arr = Array.new
  arr = msg.chars
  p arr
  arr = arr.map {|char| char.ord}
  p arr
  i = 0
  arr = arr.map do |cipher| 
    if cipher > 96 && cipher < 123
      #Letter lower case
      if  (cipher+shift) > 122
        cipher = cipher - 26
        cipher = cipher + shift
      elsif (cipher+shift) < 96
        cipher = cipher + 25
        cipher = cipher + shift
      else
        cipher = cipher + shift
      end
    elsif cipher > 64 && cipher < 91
      #Letter upper case
      if  (cipher+shift) > 90
        cipher = cipher - 25
        cipher = cipher + shift
      elsif (cipher+shift) < 65
        cipher = cipher + 25
        cipher = cipher + shift
      else
        cipher = cipher + shift
      end
    else
      cipher = cipher+shift
    end
    #cipher = cipher + shift
  end
  
  
  p arr
  arr = arr.map {|unit| unit.chr}
  p arr
else
  p "Enter less than 26 as the shift"
end  
end

caesar_cipher("Nevitt", 27)

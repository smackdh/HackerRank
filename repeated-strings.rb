require 'securerandom'

def repeatedString(s, n)
count = 0
repeated_string = ""
n.times do
  repeated_string += s
end
repeated_string.chars.count("a")
end


puts repeatedString("aba", 10)

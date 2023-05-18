# PSUEDOCODE

# a = array
# d = hur många steg den ska rotera
# n = vilken array som ska roteras

a = [1,2,3,4]
d = 2

def rotLeft(a, d)
  rotated_arr = a[d..] + a[0..d]
  rotated_arr
end


result = rotLeft(a, d)
puts result

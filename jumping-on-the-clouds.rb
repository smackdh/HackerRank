# a variable that tracks the jumps
# create a loop that iterates +2 if the current position + 2 is 0
# otherwise iterate 1
# do this until you're on the last one of the array
# return jumps
arr = [0,1,0,0,0,1,0]
def jumpingOnClouds(c)
  jumps = 0
  position = 0

  while position < c.length - 1
    if c[position + 2] == 0
      position += 2
      jumps +=  1
    elsif c[position + 1] == 0
      position += 1
      jumps += 1
    end
  end
  puts jumps
end

jumpingOnClouds(arr)

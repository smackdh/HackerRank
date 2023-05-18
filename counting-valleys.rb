# Psuedo
# Not sure I need to do anything with steps.
#### But for the path, you need to separate all the steps, to get them each individually
#### We need to keep track of current position to know how high/low they are in comparison to sea level[0]
# You then need to compare, starting from the second step if each step is the same step U/D
# To compare the steps, you need to have a value. 0 i base right. if it is negative then you've gone down. if it is up then you've gone +1
# and find out how many doubles in a row there are and print the sum of amount of doubles
# note that it might be a valley after a mountain, so that would just be going down the mountain.

# Gå över alla steg och jämför med den tidigare. Ha två counters, up och ner?
# Om det är två på rad, ha ett positivt tal
# om det är två på rad negativt tal
# Jämför värdena i slutet / slå ihop dem?

# I should probably use steps as a counter
def CountingValleys(steps, path)
  valleysEntered = 0
  currentLevel = 0

  path = path.split('')

  path.each_with_index do |step, index|
    currentLevel += 1 if step == 'U'
    currentLevel -= 1 if step == 'D'

    if currentLevel.zero? && step == 'U' && index > 0
      valleysEntered +=1
    end
  end
  valleysEntered
end

def newCountingValleys(steps, path)
 path = path.split('')
 currentLevel = 0
 traversed = 0

 path.each do |step|
  if step == 'U'
    currentLevel += 1
    traversed += 1 if currentLevel.zero? && step == 'U'
  elsif step == 'D'
    currentLevel -= 1
  end
end

 puts "How many Traversed: #{traversed}"
end
newCountingValleys(8, "UDDDUDUU")
newCountingValleys(16, "DDUUDDUDUUUDDDDD")

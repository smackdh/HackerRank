def hourglassSum(arr)
    # Write your code here
    max = -69
  (0..3).each do |i|
    (0..3).each do |j|
      sum = arr[i][j, 3].sum + arr[i+ 1][j + 1] + arr[i+2][j, 3].sum
      max = sum > max ? sum : max
  end
end
 puts max
end

arr = [
  [1,1,1,0,0,0],
  [0,1,0,0,0,0],
  [1,1,1,0,0,0],
  [0,0,2,4,4,0],
  [0,0,0,2,0,0],
  [0,0,1,2,4,0]
 ]

 hourglassSum(arr)

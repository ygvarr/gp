arr1 = [1, 2, 3, 4, 5, 6, 7]
arr2 = []
length = arr1.length-1

while length >= 0
  arr2 << arr1[length]
  length -= 1
end

puts arr2.to_s
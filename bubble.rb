def bubble_sort(array)

  count = array.length
  x = 0
  i = 0

while x < count - 1

while i < count - x - 1
if array[i] > array[i + 1]
  leftNumb = array[i]
  rightNumb = array[i + 1]
  array[i] = rightNumb
  array[i + 1] = leftNumb
end

i = i + 1
end

 x = x + 1
end
sorted_array = array
return sorted_array

end

sorted_numbers = bubble_sort([30,200,70,80])

puts sorted_numbers

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

sorted_numbers = bubble_sort([30, 200, 70, 80])

puts sorted_numbers.join(" ")

def compare_by_length(left, right)
value = 0
if left.length > right.length
value = 1
elsif left.length == right.length
value = 0
else
  value = -1
end
return value
end

puts compare_by_length("Suliva", "Sulivan")

def bubble_sort_by(array)
count = array.length
index = 0
elements = 0
while index < count - 1
while elements < count - index - 1
if yield(array[elements], array[elements + 1]) > 0
left_numb = array[elements]
right_numb = array[elements + 1]
array[elements] = right_numb
array[elements + 1] = left_numb
end
elements += 1
end
index += 1
end
new_sorted_array = array
return new_sorted_array
end

puts bubble_sort_by(["hi", "hello", "hey"]) {
  | str1, str2 | compare_by_length(str1, str2)
}

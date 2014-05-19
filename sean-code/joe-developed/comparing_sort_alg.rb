# Sorting Function.
# Reads various files (randomly sorted, worst case sorted, mostly sorted) and runs various 
# sorting algorithms.  Shows the # of operations for each. 


unsorted_random = []
unsorted_worst = []
unsorted_almost = []

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_files/unsorted_random.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_random.push(line.to_i)
end

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_files/unsorted_worst.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_worst.push(line.to_i)
end

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_files/unsorted_almost.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_almost.push(line.to_i)
end


# Crude bubble sort.  Still not done, it makes unnecessary comparisons even after the 
# array is sorted.  Sean...fix this so that it stops once it is sorted.
def bubble_sort(numbers)

	swap_count = 0
	compare_count = 0
	
	for i in 0..(numbers.length - 2)
		
		for j in 0..(numbers.length-2-i)
			found_swap = false
			compare_count += 1
			
			if numbers[j] > numbers[j+1]
				found_swap = true
			# Swap numbers if the second number is greater than the first
				if found_swap == false
					temp = numbers[j+1]
					numbers[j+1] = numbers[j]
					numbers[j] = temp
					swap_count += 1
				end
			end
		end	
	end

	return compare_count, swap_count

end

# Sean........ fill this in with your algorithm.
def sean_sort(numbers)


end

# Random numbers sorted by bubble
puts "Original set of numbers in unsorted_random.txt has " + unsorted_random.length.to_s + " numbers."
puts unsorted_random.join(", ")

compare_count, swap_count = bubble_sort(unsorted_random)

puts "\nSorted set of numbers"
puts unsorted_random.join(", ")
puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
puts "----------------------------------------------------"
# Worst case sort (reversed numbers) sorted by bubble
puts "Original set of numbers in unsorted_worst.txt has " + unsorted_worst.length.to_s + " numbers."
puts unsorted_worst.join(", ")

compare_count, swap_count = bubble_sort(unsorted_worst)

puts "\nSorted set of numbers"
puts unsorted_worst.join(", ")
puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
puts "-----------------------------------------------------"
# Mostly sorted list sorted by bubble
puts "Original set of numbers in unsorted_almost.txt has " + unsorted_almost.length.to_s + " numbers."
puts unsorted_almost.join(", ")

compare_count, swap_count = bubble_sort(unsorted_almost)

puts "\nSorted set of numbers"
puts unsorted_almost.join(", ")
puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
puts "-----------------------------------------------------"

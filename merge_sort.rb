def merge(left, right)
	arr = []
	while(left.length != 0 && right.length != 0) 
		if left[0] > right[0]
			arr.push(right[0])
			right.shift
		else
			arr.push(left[0])
			left.shift
		end
	end

	until left.empty?
		arr.push(left[0])
		left.shift
	end

	until right.empty?
		arr.push(right[0])
		right.shift
	end

	return arr
end

def merge_sort(arr=[])

	return arr if arr.length <= 1
	
	middle = arr.length / 2
	left = merge_sort(arr[0..middle-1])
	right = merge_sort(arr[middle .. -1])
	
	return merge(left, right)
end

puts merge_sort([1,5,900,2,4]).inspect
puts merge_sort([2, 1, 4,2, 3,2,2,4,6,2,423,436,34,23,745]).inspect

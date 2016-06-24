def merge_sort(arr)
	n = arr.length
	p = n/2
	#q = n - 1
	return arr if n == 1

	l1 =  arr[0..p-1]
	l2 =  arr[p..-1]
	
	l1 = merge_sort(l1)
	l2 = merge_sort(l2)

	return merge(l1, l2)
end

def merge(arr_1, arr_2)
	arr_3 = []	
	while arr_1.length > 0 && arr_2.length > 0
		if arr_1[0] > arr_2[0]
			arr_3 << arr_2[0]
			arr_2.delete_at(0)
		else
			arr_3 << arr_1[0]
			arr_1.delete_at(0)
		end
	end

	if arr_1.length == 0
		arr_3 += arr_2[0..-1]
	elsif arr_2.length == 0
		arr_3 += arr_1[0..-1]
	end
	
	arr_3
end

puts  merge_sort([2,6, 4, 5, 7, 9, 8, 3])








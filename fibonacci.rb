
def fibs(n)
	fib_sequence = []

	f1 = 1
	f2 = 1
	n.times do |n|
		fib_sequence.push(f1)
		temp = f1
		f1 = f2
		f2 += temp
	end
	return fib_sequence
end

def fibs_rec(n, arr=[])
	if n <= 2
		n.times{arr.push(1)} 
	else
		arr = fibs_rec(n-1,arr)
		arr.push(arr[-1] + arr[-2])
	end
	return arr
end
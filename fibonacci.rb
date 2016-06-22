#Solving Fibonacci using iteration
def fibs(n)
	sequence = [0, 1]
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		n.times do |new_num|
			new_num = sequence[-2] + sequence[-1]
			sequence << new_num
		end
	end
	sequence
end

p fibs(6)

#Solving Fibonacci using recursion
def fibs_rec(n, sequence = [0, 1])
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		new_num = sequence[-2] + sequence[-1]
		sequence << new_num
		fibs_rec(n-1, sequence)
	end
	sequence
end

p fibs_rec(7)
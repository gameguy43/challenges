array = ['4', 'A', 'B', 'C', 'D', 'A-B', 'B-C', 'B-D', 'C-D']

# first point

start = array[1]

integer = array[0].to_i

# last point

finish = array[integer]

# possibilities for first point

left_points = []
right_points = []

connections = array
(integer + 1).times do
	connections.shift
end

for i in connections
	left_points << i[0]
	right_points << i[2]
end

start_possibilities = [start]

k = 0
while k < connections.length
	if left_points[k] == start
		start_possibilities << right_points[k]
	end
	k += 1
end

m = 0
while m < connections.length
	if left_points[m] == start_possibilities[1]
		start_possibilities << right_points[m]
	end
	m += 1
end

puts start_possibilities

# possibilitites for next points


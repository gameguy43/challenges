# returns the amount of water collected by walls represented by an array
# view the challenge here:
# http://kaplanoah.tumblr.com/post/72428498917/i-got-it-ive-been-working-for-the-past-two-days
# last updated January 14 2014

walls = [2, 5, 1, 2, 3, 4, 7, 7, 6]

def find_maxs(arr1)
	$max = {}		# position and value of maxes
	$max_min = {}	# position and 'H' for maxes or 'L' for mins

	if arr1[0] > arr1[1]
		$max[0] = arr1[0]
		$max_min[0] = "H"
	end

	for a in 1...arr1.length - 1
		if ( arr1[a] > arr1[a - 1] && arr1[a] > arr1[a + 1] ) ||
			( arr1[a] > arr1[a - 1] && arr1[a] == arr1[a + 1] ) ||
			( arr1[a] > arr1[a + 1] && arr1[a] == arr1[a - 1] )
			$max[a] = arr1[a]
			$max_min[a] = "H"
		elsif ( arr1[a] < arr1[a - 1] && arr1[a] < arr1[a + 1] ) ||
			( arr1[a] < arr1[a - 1] && arr1[a] == arr1[a + 1] ) ||
			( arr1[a] < arr1[a + 1] && arr1[a] == arr1[a - 1] )
			$max_min[a] = "L"
		end
	end

	if arr1[-1] > arr1[-2]
		$max[arr1.length - 1] = arr1[-1]
		$max_min[-1] = "H"
	end
end

def remove_duplicate_maxs(arr2)
	find_maxs(arr2)
	$max_keys = $max.keys

	for b in 1..$max_min.length
		if ( $max_min.values[b] == $max_min.values[b - 1] ) &&
			( $max_min.values[b] == "H" )
			( arr2[b] > arr2[b - 1] ) ? $max_keys.delete($max_min.keys[b - 1]) : $max_keys.delete($max_min.keys[b])
		end
	end
end

def find_volume(arr3)
	remove_duplicate_maxs(arr3)
	volume = 0
	return "Volume: #{volume}" if $max_keys.length < 2

	for c in 0...($max_keys.length - 1)
		for i in ( arr3[$max_keys[c]..$max_keys[c + 1]] )
			if i <= arr3[$max_keys[c + 1]] &&
				arr3[$max_keys[c]] >= arr3[$max_keys[c + 1]]
				volume += ( arr3[$max_keys[c + 1]] - i )
			elsif i < arr3[$max_keys[c]]
				volume += ( arr3[$max_keys[c]] - i )
			end
		end
	end
	return "Volume: #{volume}"
end

find_volume(walls)


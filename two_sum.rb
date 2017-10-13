def two_sum?(arr, target)
  (0...arr.length-1).each do |first|
    (first+1...arr.length).each do |second|
      return true if arr[first] + arr[second] == target
    end
  end
false
end


p two_sum?([0,1,5,7], 6)

def okay_two_sum?(arr, target)
  arr = arr.sort
  i = 0
  j = arr.length - 1

  while i < j
    case (arr[i] + arr[j]) <=> target
    when -1
      i += 1
    when 0
      return true
    when 1
      j -= 1
    end
  end
  false



end

p okay_two_sum?([0,1,5,7],6)

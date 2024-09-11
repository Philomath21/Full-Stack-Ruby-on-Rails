def merge_sort(int_a, i_1 = 0, i_2 = 0, sorted_a = [])
  len = int_a.length
  return int_a if len == 1

  half_1 = merge_sort(int_a[0...len/2])
  half_2 = merge_sort(int_a[len/2..])

  loop do
    if half_1[i_1] < half_2[i_2]
      sorted_a.push(half_1[i_1])
      i_1 += 1
      return sorted_a += half_2[i_2..] if i_1 == half_1.length
    else
      sorted_a.push(half_2[i_2])
      i_2 += 1
      return sorted_a += half_1[i_1..] if i_2 == half_2.length
    end
  end
end

p merge_sort([1,8,3,5,3,9,8,5,45,23,78,11,0])
p merge_sort([1,0])

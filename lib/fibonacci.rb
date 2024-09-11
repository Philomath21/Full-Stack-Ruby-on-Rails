def fibs(n)
  return [0] if n == 1

  fibs_a = [0, 1]
  count = 2
  loop do
    return fibs_a if count == n

    fibs_a[count] = fibs_a[count - 1] + fibs_a[count - 2]
    count += 1
  end
end

p fibs(2)
p fibs(1)
p fibs(8)

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  prev_a = fibs_rec(n - 1)
  prev_a.push(prev_a[-1] + prev_a[-2])
end

p fibs_rec(2)
p fibs_rec(1)
p fibs_rec(8)

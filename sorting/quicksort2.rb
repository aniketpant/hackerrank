# quicksort2
# https://www.hackerrank.com/challenges/quicksort2

def  quickSort( ar)
  if ar.size <= 1
    return ar
  end
  pivot = [ar.first.to_i]
  ar = ar.map {|x| x.to_i}
  ar.delete_if{|x| x == pivot.first}
  lessThanPivot = []
  moreThanPivot = []
  ar.each do |x|
    if x <= pivot.first
      lessThanPivot += [x]
    else
      moreThanPivot += [x]
    end
  end
  list = quickSort(lessThanPivot) + pivot + quickSort(moreThanPivot)
  list.map{|x| print "#{x} "}
  puts "\n"
  return list
end
# Tail starts here
cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ")

quickSort( ar )
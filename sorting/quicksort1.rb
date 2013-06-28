# quicksort1
# https://www.hackerrank.com/challenges/quicksort1

def  partition( ar)
  pivot = [ar.first.to_i]
  ar = ar.map {|x| x.to_i}
  lessThanPivot = ar.select{|x| x < pivot.first}
  moreThanPivot = ar.select{|x| x > pivot.first}
  list = lessThanPivot + pivot + moreThanPivot
  list.map{|x| print "#{x} "}
  puts "\n"
end
# Tail starts here
cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ")

partition( ar )
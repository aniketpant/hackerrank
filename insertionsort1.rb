# insertionsort1
# https://www.hackerrank.com/challenges/insertionsort1

def  insertionSort( ar)
  len = ar.size
  i = len - 1

  valueToInsert = ar[i]
  holePos = i

  while i > 0 do
    if valueToInsert < ar[i-1]
      ar[holePos] = ar[i-1]
      holePos = i - 1
    else
      break
    end
    i -= 1
    ar.map {|x| print "#{x} "}
    puts "\n"
  end
  ar[holePos] = valueToInsert
  ar.map {|x| print "#{x} "}
  puts "\n"
end
# Tail starts here
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
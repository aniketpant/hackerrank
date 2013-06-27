# insertionsort2
# https://www.hackerrank.com/challenges/insertionsort2

def  insertionSort( ar)
  i = 1
  len = ar.size

  while i < len do
    valueToInsert = ar[i]
    holePos = i

    while holePos > 0 and valueToInsert < ar[holePos - 1] do
     ar[holePos] = ar[holePos - 1]
     holePos = holePos - 1
    end

    ar[holePos] = valueToInsert

    i += 1

    ar.map {|x| print "#{x} "}
    puts "\n"
  end
end
# Tail starts here
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
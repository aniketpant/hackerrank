# runningtime
# https://www.hackerrank.com/challenges/runningtime

def  insertionSort( ar)
  i = 1
  len = ar.size

  count = 0

  while i < len do
    valueToInsert = ar[i]
    holePos = i

    while holePos > 0 and valueToInsert < ar[holePos - 1] do
      count += 1 if valueToInsert < ar[holePos - 1]
      ar[holePos] = ar[holePos - 1]
      holePos = holePos - 1
    end

    ar[holePos] = valueToInsert

    i += 1
  end

  puts count
end
# Tail starts here
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
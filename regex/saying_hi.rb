# saying-hi
# https://www.hackerrank.com/challenges/saying-hi

def saying_hi( lines)
  lines.each do |line|
    if /^[Hh][Ii][[:space:]][^Dd]/.match(line)
      puts line
    end
  end
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

saying_hi( lines )
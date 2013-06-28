# alien-username
# https://www.hackerrank.com/challenges/alien-username

def alien_username( lines)
  lines.each do |line|
    if /^[\_\.]([0-9]+)([A-Za-z]*)(^0-9|\_?)$/.match(line)
      puts "VALID"
    else
      puts "INVALID"
    end
  end
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

alien_username( lines )
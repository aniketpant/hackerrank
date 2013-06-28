# valid-pan-format
# https://www.hackerrank.com/challenges/valid-pan-format

def valid_pan_format( lines)
  lines.each do |line|
    if /[[:upper:]]{5}[[:digit:]]{4}[[:upper:]]{1}/.match(line)
      puts "YES"
    else
      puts "NO"
    end
  end
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

valid_pan_format( lines )
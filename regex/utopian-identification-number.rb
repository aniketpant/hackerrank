# utopian-identification-number
# https://www.hackerrank.com/challenges/utopian-identification-number

def utopian_identification_number( lines)
  lines.each do |line|
    if /^([[:lower:]]{0,3})([0-9]{2,8})([[:upper:]]{3,})$/.match(line)
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

utopian_identification_number( lines )
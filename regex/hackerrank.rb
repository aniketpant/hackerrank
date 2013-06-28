# hackerrank
# https://www.hackerrank.com/challenges/find-hackerrank

def findhackerrank( lines)
  lines.each do |line|
    if /^hackerrank./.match(line)
      puts "1"
    elsif /.hackerrank$/.match(line)
      puts "2"
    elsif /^\bhackerrank/.match(line)
      puts "0"
    else
      puts "-1"
    end
  end
end
count = gets.to_i
lines = []
count.times do
  lines << STDIN.readline.strip
end

findhackerrank( lines )
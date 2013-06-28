# uk-and-us-2
# https://www.hackerrank.com/challenges/uk-and-us-2

def uk_and_us( lines, tests)
  tests.each do |test|
    count = 0
    uk_spelling = test
    matchData = /(?<start>\w+)(our)(?<end>\w+|$)/.match(test)
    us_spelling = matchData[:start].to_s + "or" + matchData[:end].to_s
    lines.each do |line|
      match = line.scan(/\b(#{us_spelling}|#{uk_spelling})\b/)
      count += match.size if match != nil
    end
    puts count
  end
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

T = gets.to_i
tests = []
T.times do
  tests << STDIN.readline.strip
end

uk_and_us( lines, tests )
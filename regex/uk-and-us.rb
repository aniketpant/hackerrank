# uk-and-us
# https://www.hackerrank.com/challenges/uk-and-us

def uk_and_us( lines, tests)
  tests.each do |test|
    count = 0
    us_spelling = test
    uk_spelling = /\w+(?=ze)/.match(test).to_s + "se"
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
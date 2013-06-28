# split-number
# https://www.hackerrank.com/challenges/split-number

def split_number( lines)
  lines.each do |line|
    matchData = /(?<countryCode>[0-9]{1,3})[ -](?<localAreaCode>[0-9]{1,3})[ -](?<number>[0-9]{4,10})/.match(line)
    if matchData
      puts "CountryCode=#{matchData[:countryCode]},LocalAreaCode=#{matchData[:localAreaCode]},Number=#{matchData[:number]}"
    end
  end
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

split_number( lines )
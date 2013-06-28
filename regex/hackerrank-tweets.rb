# hackerrank-tweets
# https://www.hackerrank.com/challenges/hackerrank-tweets

def hackerrank_tweets( tweets)
  count = 0
  tweets.each do |tweet|
    if /hackerrank/i.match(tweet)
      count += 1
    end
  end
  puts count
end
N = gets.to_i
tweets = []
N.times do
  tweets << STDIN.readline.strip
end

hackerrank_tweets( tweets )
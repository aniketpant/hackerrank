# detect-html-tags
# https://www.hackerrank.com/challenges/detect-html-tags

def detect_html_tags( lines)
  line = lines.join("")
  list = get_tags(line)
  puts list.uniq.sort.join(";")
end

def get_tags( line)
  list = []
  expression = /<[[:space:]]?(?<tag>[[:alnum:]]+)[^>]*\/?>
                ((?<content>.*)
                <\/\k<tag>>)?/x
  matchData = line.scan(expression)
  if matchData.size
    matchData.each do |match|
      list << match[0].to_s
      list += get_tags(match[1].to_s)
    end
  end
  return list
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

detect_html_tags( lines )
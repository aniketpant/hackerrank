# detect-html-links
# https://www.hackerrank.com/challenges/detect-html-links

def detect_html_links( lines)
  list = []
  expression = /<a[^>]*href="[[:space:]]*(?<link>[^"]*)[[:space:]]*"[^>]*>
                  (<(?<tag>[[:alnum:]]+)[^>]*>)*
                    [[:space:]]*(?<link_text>[^>]*)[[:space:]]*
                  (<\/\k<tag>>)*
                <\/a>/x
  lines.each do |line|
    matchData = line.scan(expression)
    if matchData.size
      matchData.each do |match|
        list << "#{match[0].to_s},#{match[2].to_s}"
      end
    end
  end
  puts list.join("\n")
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

detect_html_links( lines )
# html-attributes
# https://www.hackerrank.com/challenges/html-attributes

def detect_html_attributes( lines)
  line = lines.join("")
  list = get_attributes(line)
  list = list.sort
  list.each {|key, value|
    puts "#{key}:#{value.sort.join(',')}"
  }
end

def get_attributes( line)
  list = {}
  expression = /<[[:space:]]?(?<tag>[[:alnum:]]+)(?<attributes>[^>]*)\/?>
                ((?<content>.*)
                <\/\k<tag>>)?/x
  matchData = line.scan(expression)
  if matchData.size
    matchData.each do |match|
      tag = match[0].to_s
      attributes = match[1].scan(/(\w+)=[\"|\'][^\"]*[\"|\']/)
      list[tag] = attributes.sort
      newList = get_attributes(match[2].to_s)
      newList.each { |key, value|
        if list.has_key?key
          list[key] += value
          list[key] = list[key].uniq
        else
          list[key] = value
        end
      }
    end
  end
  return list
end
N = gets.to_i
lines = []
N.times do
  lines << STDIN.readline.strip
end

detect_html_attributes( lines )
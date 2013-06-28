# hackerrank-language
# https://www.hackerrank.com/challenges/hackerrank-language

def hackerrank_languages( lines)
  valid_languages = ["C", "CPP", "JAVA", "PYTHON", "PERL", "PHP", "RUBY", "CSHARP", "HASKELL", "CLOJURE", "BASH", "SCALA", "ERLANG", "CLISP", "LUA","BRAINFUCK", "JAVASCRIPT", "GO", "D", "OCAML", "R", "PASCAL", "SBCL", "DART", "GROOVY", "OBJECTIVEC"]
  lines.each do |line|
    if /^[1-9][0-9]{4}[[:space:]](#{valid_languages.join("|")})$/.match(line)
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

hackerrank_languages( lines )
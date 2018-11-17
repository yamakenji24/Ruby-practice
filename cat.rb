filename = ARGV[0]
option = ARGV[1]


def simple_print(text)
  print text
end

def number_print(text,option)
  i = 1
  text.each_line do |line|
    print i , line
    i += 1
  end
end

file = File.open(filename)
text = file.read

case option
when "-n"
  number_print(text, option)
else
  simple_print(text)
end

file.close

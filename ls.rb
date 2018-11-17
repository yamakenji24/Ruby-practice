option = ARGV[0]

def show_all
  p Dir.glob("*")
end

def show_dot(option)
  p Dir.glob(".*|*")
end

case option
when "-a"
show_dot(option)
else
show_all
end

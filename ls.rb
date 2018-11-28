option = ARGV[0]

def show_all
  p Dir.glob("*")
end

def show_dot
  p Dir.glob(".*")
end

case option
when "-a"
show_dot
else
show_all
end

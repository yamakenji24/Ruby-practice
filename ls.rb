option = ARGV[0]

def show_all
  print Dir.glob("*")
end

def show_dot
  print Dir.glob(".*")
end

case option
when "-a"  
  show_dot
else
  show_all
end

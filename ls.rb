option = ARGV[0]
def show_all
  print "#{Dir.glob("*")}\n"
end

def show_dot
  print "#{Dir.glob(".*")}\n"
end

def get_change_time
  Dir.glob("*") do |name|
    s = File.stat(name)
    print "#{s.mtime} #{name}\n"
  end
end

case option
when "-a"
  show_dot
when "-t"
  get_change_time
else
  show_all
end

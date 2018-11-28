option = ARGV[0]
def show_all
  print"#{Dir.glob("*")}\n"
end

def show_dot
  print Dir.glob(".*")
end

def get_changetime
  Dir.glob("*") do |name|
    s = File::Stat.new(name)
    print "#{s.mtime} #{name}\n"
  end
end

case option
when "-a"
  show_dot
when "-t"
  get_changetime
else
  show_all
end

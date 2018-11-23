# coding: utf-8
require 'fileutils'

name = ARGV[0]
option = ARGV[1]


def mkdir_simple(name)
  Dir.mkdir(name)
end

def mkdir_deep(name)
  FileUtils.mkdir_p(name)
end

def mkdir_help
  ary =" 
    使用法: mkdir [OPTION]... DIRECTORY...
    Create the DIRECTORY(ies), if they do not already exist.

    Mandatory arguments to long options are mandatory for short options too.
      -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask
      -p, --parents     no error if existing, make parent directories as needed
      -v, --verbose     print a message for each created directory
      -Z                  set SELinux security context of each created directory 
                            to the default type
          --context[=CTX] like -Z, or if CTX is specified then set the SELinux
                            or SMACK security context to CTX
          --help        この使い方を表示して終了する
          --versioin    バージョン情報を表示して終了する
"
  ary.each_line do |line|
    print line
  end
end

if(!name)
  p "mkdir: オペランドがありません"
  p "Try 'mkdir --help' for more information."
elsif(name == "--help")
  mkdir_help
else
  case option
  when "-p"
    mkdir_deep(name)
  else
    if (!name.include?("/"))
        mkdir_simple(name)
    else
      p "mkdir: ディレクトリ'#{name}' を作成できません: そのようなファイルやディレクトリはありません"
    end
  end
end

require "kconv"
last_name = []
first_name = []

def file_str_to_array(filename, ary)
  File.open(filename) do |io|
    while (file_str = io.gets)
      ary.push(file_str.chomp!)
    end
  end
end

file_str_to_array('first_name.txt', first_name)
file_str_to_array('last_name.txt', last_name)


puts Kconv.tosjis("#{last_name.shuffle![0]} #{first_name.shuffle![0]}")

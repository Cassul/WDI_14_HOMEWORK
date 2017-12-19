puts "Enter filename"
content_of_textfile = IO.readlines(gets.chomp)
puts "File has #{content_of_textfile.length} lines of code"
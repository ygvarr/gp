puts "enter email:"
gets.chomp =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/ ? puts("yes") : (puts"no")

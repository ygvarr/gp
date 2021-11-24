reg = /#[a-z\d\-\_]+/i
str1 = "london is the capital of great #britain?"
str2 = "travel to #new_york #los_angeles"
arr = str2.scan(reg)
puts arr.join(", ")

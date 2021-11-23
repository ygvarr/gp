require "pony"
require "io/console"

SERVER_MAIL = "ygvarr@gmail.com"

puts "enter your token"
pass = STDIN.noecho(&:gets).chomp

puts "enter adress mail:"
mail_adress = gets.chomp

puts "enter mail head:"
mail_subject = gets.chomp

puts "enter mail message"
mail_body = gets.chomp

Pony.mail({
  :to => mail_adress,
  :subject => mail_subject,
  :body => mail_body,
  :via => :smtp,
  :via_options => {
    :address => "smtp.gmail.com",
    :port => "587",
    :user_name => SERVER_MAIL,
    :password => pass,
    :authentication => :plain,
  },
})

puts "done"

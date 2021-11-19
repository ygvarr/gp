require_relative "./body_builder.rb"

bb1 = BodyBuilder.new
bb2 = BodyBuilder.new
bb3 = BodyBuilder.new

bb1.pump "triceps"
bb2.pump "biceps"
bb3.pump "deltovidka"

puts "\nПервый бодибилдер:"
bb1.show_muscles
puts "\nВторой бодибилдер:"
bb2.show_muscles
puts "\nТретий бодибилдер:"
bb3.show_muscles
$a = nil
b = nil

def method
  c = nil

  puts defined?($a)
  puts defined?(b)
  puts defined?(c)
end

puts defined?($a)
puts defined?(b)
puts defined?(c)

method
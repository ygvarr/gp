PATH_FOREHEADS = File.dirname(__FILE__) + "/data/foreheads.txt"
PATH_EYES = File.dirname(__FILE__) + "/data/eyes.txt"
PATH_NOSES = File.dirname(__FILE__) + "/data/noses.txt"
PATH_MOUTHS = File.dirname(__FILE__) + "/data/mouths.txt"

File.exist?(PATH_FOREHEADS) ? (foreheads = File.open(PATH_FOREHEADS, "r").readlines) : (puts "file not found")
File.exist?(PATH_EYES) ? (eyes = File.open(PATH_EYES, "r").readlines) : (puts "file not found")
File.exist?(PATH_NOSES) ? (noses = File.open(PATH_NOSES, "r").readlines) : (puts "file not found")
File.exist?(PATH_MOUTHS) ? (mouths = File.open(PATH_MOUTHS, "r").readlines) : (puts "file not found")

5.times {
  puts foreheads.sample
  puts eyes.sample
  puts noses.sample
  puts mouths.sample
  puts
}

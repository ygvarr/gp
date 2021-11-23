PATH_FOREHEADS = File.dirname(__FILE__) + "/data/foreheads.txt"
PATH_EYES = File.dirname(__FILE__) + "/data/eyes.txt"
PATH_NOSES = File.dirname(__FILE__) + "/data/noses.txt"
PATH_MOUTHS = File.dirname(__FILE__) + "/data/mouths.txt"

File.exist?(PATH_FOREHEADS) ? (foreheads = File.open(PATH_FOREHEADS, "r").readlines) : (puts "file not found")
File.exist?(PATH_EYES) ? (eyes = File.open(PATH_EYES, "r").readlines) : (puts "file not found")
File.exist?(PATH_NOSES) ? (noses = File.open(PATH_NOSES, "r").readlines) : (puts "file not found")
File.exist?(PATH_MOUTHS) ? (mouths = File.open(PATH_MOUTHS, "r").readlines) : (puts "file not found")

file_name = "face#{Time.now.strftime("_%Y.%m.%d_%H:%M:%S")}"
file = File.open(File.dirname(__FILE__) + "/#{file_name}", "a")
file.puts foreheads.sample
file.puts eyes.sample
file.puts noses.sample
file.puts mouths.sample
file.close

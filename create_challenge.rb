require 'FileUtils'

puts 'How do you want to name your challenge?'
challenge_name = gets.chomp
time = Time.now.to_i
name = "#{time}_#{challenge_name}"
# create folder
Dir.mkdir(name)
# copy template to new challenge
FileUtils.cp_r('template/.', "#{name}/")

puts ''
puts 'Your new challenge was created'
puts "Folder: #{name}"
puts 'Write the tests in _spec.rb and provide the method signature in challenge.rb'
puts ''

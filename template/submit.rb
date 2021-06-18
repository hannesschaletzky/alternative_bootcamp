# frozen_string_literal: true

require 'fileutils'
require 'rspec'

cur_dir = File.dirname(__FILE__)

# verify successful rspec tests
spec_path = "#{cur_dir}/challenge_spec.rb"
result = RSpec::Core::Runner.run([spec_path])
if result == 1
  puts 'Your tests did not pass!'
  puts 'You cannot submit your solution...'
  puts ''
  return
end
puts 'Your tests passed!'
puts 'Congrats'
puts '(Insert GitHub SSH key if necessary)'
puts ''

# get githubname and add it in the filepath
name = `git config user.name`.chomp.gsub(' ', '')
challenge_path = "#{cur_dir}/challenge.rb"
# save in the solution folder
solution_file = "#{cur_dir}/solutions/#{name}.rb"
FileUtils.cp(challenge_path, solution_file)
# revert changes in challenge.rb
system("git restore #{challenge_path}")

# commit & push solution
system("git add #{solution_file}")
system('git commit -m "added solution"')
system('git push origin master')

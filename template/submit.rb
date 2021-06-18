require 'fileutils'

# get githubname and add it in the filepath
name = `git config user.name`.chomp.gsub(' ', '')
challenge_path = "#{File.dirname(__FILE__)}/challenge.rb"
# save in the solution folder
solution_file = "#{File.dirname(__FILE__)}/solutions/#{name}.rb"
FileUtils.cp(challenge_path, solution_file)
# revert changes in challenge.rb
system("git restore #{challenge_path}")

# commit & push solution
system("git add #{solution_file}")
system('git commit -m "added solution"')
system('git push origin master')

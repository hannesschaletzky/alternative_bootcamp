require 'fileutils'
# get githubname and add it in the filepath
name = `git config user.name`.chomp.gsub(' ', '')
challenge_path = "#{File.dirname(__FILE__)}/challenge.rb"
# save in the solution folder
FileUtils.cp(challenge_path, "#{File.dirname(__FILE__)}/solutions/#{name}.rb")
# revert changes in challenge.rb
system("git restore #{challenge_path}")

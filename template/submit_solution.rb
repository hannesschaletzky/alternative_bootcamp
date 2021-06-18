require 'FileUtils'
# get githubname and add it in the filepath
#  to get the name
value = system( 'git config user.name' )
puts value
# save in the solution folder
FileUtils.cp('challenge.rb', "solutions/charles.rb")
# save with the name solution_username
# delete solution from the challenge.rb

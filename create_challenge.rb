require 'FileUtils'

# get folders
folders = Dir.glob('*').select { |f| File.directory? f }
# select challenge folders
f_prefix = 'cl_'
chal_folders = folders.select { |f| f.include?(f_prefix) }
chal_folders.sort!
puts chal_folders
# get highest number
max_num = 0
max_num = chal_folders.last.gsub(f_prefix, '').to_i unless chal_folders.empty?
# insert leading zeros
name = "#{f_prefix}#{max_num + 1}"
name = "#{f_prefix}0#{max_num + 1}" if max_num < 999
name = "#{f_prefix}00#{max_num + 1}" if max_num < 99
name = "#{f_prefix}000#{max_num + 1}" if max_num < 9
# create folder
Dir.mkdir(name)
# copy template to new challenge
FileUtils.cp_r('template/.', "#{name}/")

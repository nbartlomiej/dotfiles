require 'rake'

desc "Install config files into home directory."
task :'home:install' do
  # Copy files with the following options:
  #  -r : recursive, copying all directory
  #  -i : interactive, confirming before overwriting
  #  -v : verbose, listing all operations
  puts `cp -riv #{File.dirname(__FILE__)}/dotfiles-home/ ~/`
end

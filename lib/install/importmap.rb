# Assumes stimulus is already installed

say "Copying ATV Rails JavaScript"
copy_file "#{__dir__}/app/javascript/controllers/atv-rails.js", "app/javascript/controllers/atv-rails.js"

say "Pin ATV"
say %(Appending: pin "@sbrew.com/atv")
append_to_file "config/importmap.rb", %(pin "atv", to: "@sbrew.com--atv.js"\n)

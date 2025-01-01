namespace :atv do
  desc "Install ATV into this rails app"
  task :install do
    importmap_file = "config/importmap.rb"
    pin_command = %(pin "@sbrew.com/atv", to: "atv.min.js")
    installed = false

    # Add importmap
    if File.exist?(importmap_file)
      if File.read(importmap_file).include?(pin_command)
        puts "Importmap already pinned, no change"
        installed = true
      end
    end
    unless installed
      File.open(importmap_file, "a") do |file|
        file.puts(pin_command)
      end
    end

    # Add to application.js
    application_js_file = "app/javascript/application.js"
    included = false

    if File.exist?(application_js_file)
      if File.read(application_js_file).match?(/import.*activate.*sbrew.*atv/)
        puts "Javascript already included, no change"
        included = true
      end
    end
    unless included
      File.open(application_js_file, "a") do |file|
        file.puts %[import { activate } from "@sbrew.com/atv"; activate("atv");]
      end
    end
  end
end

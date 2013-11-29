#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
# load 'rails/tasks/engine.rake'


Bundler::GemHelper.install_tasks

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

task :default => :spec



def download(url, filename)
  puts "Downloading #{url} ..."
  `mkdir -p tmp`
  `curl -L -# #{url} -o tmp/#{filename}`
end

desc "Update wymeditor to version specified in lib/wymeditor-rails/version.rb"
task :update => [ :fetch, :extract ]

task :fetch do
  download("https://github.com/downloads/wymeditor/wymeditor/wymeditor-#{WymeditorRails::WYMEDITOR_VERSION}.tar.gz", "wymeditor.tar.gz")
end

task :extract do
  `rm -rf tmp/wymeditor`
  `tar -xf tmp/wymeditor.tar.gz -C tmp/`
  `rm -rf app/assets/wymeditor`
  `mkdir -p app/assets/wymeditor`
  `mv tmp/wymeditor/wymeditor/* app/assets/wymeditor/`
end


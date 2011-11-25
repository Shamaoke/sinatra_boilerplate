# encoding: utf-8

require 'sprockets'
require 'uglifier'

desc 'compile the asset files'
task 'compile' do
  sprockets = Sprockets::Environment.new

  sprockets.js_compressor = Uglifier.new

  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/javascripts'

  sprockets['application.sass'].write_to('public/stylesheets/application.css')
  sprockets['application.js'].write_to('public/javascripts/application.js')
end

desc 'create a migration'
task 'migration', :name do |*args|
  File.open("db/migrations/#{Time.now.strftime('%Y%m%d%H%M%S')}_#{args[1][:name]}.rb", 'w') do |f|
    f.puts <<-END
# encoding: utf-8

Sequel.migration do
  change do
  end
end
    END
  end
end

begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'
rescue LoadError
  task :jasmine do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end

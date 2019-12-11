require 'middleman-gh-pages'

ENV['BRANCH_NAME'] = 'master'

namespace :assets do
  task :precompile => :build
end

desc "Build"
task :build do
  sh "bundle exec middleman build --clean"
end

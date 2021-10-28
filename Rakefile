require 'bundler'
Bundler::GemHelper.install_tasks

require 'cucumber/rake/task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new
Cucumber::Rake::Task.new(:cucumber, 'Run features that should pass') do |t|
  t.cucumber_opts = '--color --tags="not @wip" --strict'
end

require 'rake/clean'

task test: ['cucumber']

task default: %i[test rubocop]

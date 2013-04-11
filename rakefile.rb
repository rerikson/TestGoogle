require 'cucumber'
require 'cucumber/rake/task'
require 'rake'



#task firefox
Cucumber::Rake::Task.new(:firefox, 'Run test using firefox') do |t|
  t.profile = 'firefox'
end                                     
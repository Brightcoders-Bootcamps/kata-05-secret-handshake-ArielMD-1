require 'rubycritic_small_badge'
require 'rubycritic/rake_task'

RubyCriticSmallBadge.configure do |config|
  config.minimum_score = ENV.fetch('RUBYCRITICLIMIT', 85.0)
  config.output_path = ENV.fetch('RUBYCRITPATH', 'badges/src')
end

RubyCritic::RakeTask.new(:source) do |task|
  task.options = %(--custom-format RubyCriticSmallBadge::Report
--minimum-score #{RubyCriticSmallBadge.config.minimum_score}
--format html --format console --path rubycritic/src)
  task.paths = FileList['src/**/*.rb']
end

RubyCriticSmallBadge.configure do |config|
  config.minimum_score = ENV.fetch('RUBYCRITICLIMIT', 65.0)
  config.output_path = ENV.fetch('RUBYCRITPATH', 'badges/spec')
end

RubyCritic::RakeTask.new(:test) do |task|
  task.options = %(--custom-format RubyCriticSmallBadge::Report
--minimum-score #{RubyCriticSmallBadge.config.minimum_score}
--format html --format console --path rubycritic/spec)
  task.paths = FileList['spec/**/*.rb']
end

task :spec_tests do
  system 'rspec  spec/*.rb --format doc'
end

task :code do
  system 'ruby  src/main.rb'
end

task default: %w[spec_tests source test code]

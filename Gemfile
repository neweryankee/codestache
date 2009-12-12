disable_system_gems
clear_sources
bundle_path "vendor/bundler_gems"

source "http://gemcutter.org"
source "http://gems.rubyforge.org"

gem "rails", "2.3.5"
gem "sqlite3-ruby", "1.2.5"
gem "nokogiri", "1.4.0"
gem "haml", "2.2.15"
gem "compass", "0.10.0.pre2"
gem 'ruby-debug', '0.10.3', :only => [ :test, :development]

only :test do
  gem 'rspec', '1.2.9'
  gem 'rspec-rails', '1.2.9'
  gem 'cucumber', '0.4.3'
  gem 'webrat', '0.5.3'
  gem 'factory_girl', '1.2.3'
  gem 'shoulda', '2.10.2'
end

only :development do
  gem 'mongrel', '1.1.5'
end

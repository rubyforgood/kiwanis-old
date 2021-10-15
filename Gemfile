source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"
gem "rails", "~> 7.0.0.alpha2"

gem 'pg', '~> 1.2.3'
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem 'devise', '~> 4.8.0'
gem "react-rails", "~> 2.6.1"

gem "cssbundling-rails", ">= 0.1.0"
gem "importmap-rails", ">= 0.3.4"
gem "sassc-rails", "~> 2.1"

gem "sprockets-rails", ">= 2.0.0"
gem "jsbundling-rails", "~> 0.1.0"
gem "turbo-rails", ">= 0.7.11"
gem "stimulus-rails", ">= 0.4.0"
gem "jbuilder", "~> 2.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  # Start debugger with binding.b [https://github.com/ruby/debug]
  gem "debug", ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails',                        '~> 6.1.5', '>= 6.1.5.1'

gem 'aws-sdk-s3',                   '1.114.0', require: false
gem "image_processing",             ">= 1.12.2"
gem 'mini_magick',                  '4.11.0'
gem 'active_storage_validations',   '0.9.8'
gem 'bcrypt',                       '3.1.17'
gem 'faker',                        '2.20.0'
gem 'will_paginate',                '3.3.1'
gem 'bootstrap-will_paginate',      '1.0.0'
gem 'bootstrap-sass',               '3.4.1'
gem 'puma',                         '5.6.4'
gem 'sass-rails',                   '6.0.0'
gem 'webpacker',                    '~> 5.0'
gem 'turbolinks',                   '5.2.1'
gem 'jbuilder',                     '2.11.5'
gem 'bootsnap',                     '>= 1.4.2', require: false

group :development, :test do
  gem 'sqlite3',                    '1.4.2'
  gem 'byebug',                     '11.1.3', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',                '4.2.0'
  gem 'listen',                     '3.7.1'
  gem 'spring',                     '2.1.1'
  gem 'spring-watcher-listen',      '2.0.1'
end

group :test do
  gem 'capybara',                    '>= 3.26'
  gem 'selenium-webdriver',          '>= 4.0.0.rc1'
  gem 'webdrivers',                  '~> 5.0', require: false
  gem 'rails-controller-testing',    '1.0.5'
  gem 'minitest',                    '5.15.0'
  gem 'minitest-reporters',          '1.5.0'
  gem 'guard',                       '2.18.0'
  gem 'guard-minitest',              '2.4.6'
end

group :production do
  gem 'pg',                          '1.3.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
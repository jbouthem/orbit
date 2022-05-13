source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.5', '>= 6.1.5.1'


# gem 'rails',            '6.0.0'
gem 'aws-sdk-s3',       '1.46.0', require: false
gem 'image_processing', '1.9.3'
# gem 'mini_magick',      '4.9.5'
gem 'active_storage_validations',   '0.8.2'
gem 'bcrypt',           '3.1.13'
gem 'faker',            '2.1.2'
# gem 'will_paginate',    '3.1.8'
gem 'will_paginate',      '3.3.0'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass',   '3.4.1'
gem 'puma',             '3.12.1'

# gem 'sass-rails',       '5.1.0'
gem 'sass-rails',       '6.0.0'

gem 'webpacker',        '~> 5.0'
gem 'turbolinks',       '5.2.0'
gem 'jbuilder',         '2.9.1'
gem 'bootsnap',         '>= 1.4.2', require: false

group :development, :test do
  # gem 'sqlite3',        '1.4.1'
  gem 'sqlite3',        '1.4.2'

  gem 'byebug',         '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',           '4.0.1'
  gem 'listen',                '~> 3.3'
  gem 'spring',                '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'capybara',                       '>= 3.26'
  gem 'selenium-webdriver',             '>= 4.0.0.rc1'
  gem 'webdrivers',                     '~> 5.0', require: false
  gem 'rails-controller-testing',      '1.0.5'
  gem 'minitest',                       '5.15.0'
  gem 'minitest-reporters',             '1.5.0'
  gem 'guard',                          '2.18.0'
  gem 'guard-minitest',                 '2.4.6'
end

group :production do
  gem 'pg', '1.1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
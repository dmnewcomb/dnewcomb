source 'https://rubygems.org'

group :development do
  # Use mysql in development
  gem 'sqlite3'
  gem 'spring'
end

group :production do
  # Use postgresql in production
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  
  gem 'rspec-rails'
end

# Basic gems to get everything working
gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'coffee-script-source', '1.8.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'

# Adds easy icons/etc.
gem 'font-awesome-rails'

# Enable WrapText 
gem 'wraptext'

# Enable Email Validation
gem 'valid_email'

# Clears up the console - makes it easier to read which assets
gem 'quiet_assets', group: :development

# Faster web server
gem 'passenger'

# Progress bar for ajax calls
gem 'nprogress-rails'

# Adds vendor prefixes to css
gem "autoprefixer-rails" 

# Nice dropdown-menus
gem 'bootstrap-select-rails'

# Smooth Scrolling
gem 'jquery-easing-rails'

# Zoom Image feature
gem 'elevatezoom-rails'

#  Allows for easy creation of highcharts
gem 'lazy_high_charts'
gem 'highcharts-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

source 'https://rubygems.org'
gem 'bundler', '>=1.8.4'


gem 'rails', '4.2.4'
gem 'autoprefixer-rails'

# User management
gem 'devise', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# AdminLTE Theme
gem 'bootstrap-sass', '3.3.7'

source 'https://rails-assets.org' do
  gem 'rails-assets-morrisjs'
  gem 'rails-assets-raphael'
end

gem 'adminlte2-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# For forms
gem 'cocoon', '>= 1.2.0'
gem 'momentjs-rails', '~> 2.9',  :github => 'derekprior/momentjs-rails'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

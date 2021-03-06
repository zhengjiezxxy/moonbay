source 'https://rubygems.org'

ruby "1.9.3"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

gem 'twitter-bootstrap-rails' , :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git', :branch=>"bootstrap3"
gem 'less-rails'
gem 'therubyracer'

#rich text editor
#gem 'bootsy'
gem 'ckeditor'
gem 'paperclip','4.1.1'
#non-digest assets
gem "non-stupid-digest-assets"
#better form
gem 'simple_form'

#injected plugin heroku
gem 'rails_12factor', group: :production

#adminnistrator gem
gem 'rails_admin'

#authentication
gem 'devise'

#different roles and abilities
gem "cancan"

#test
group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'rspec-rails' 
  gem "capybara"
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

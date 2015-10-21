source "https://rubygems.org"
ruby "2.2.2"

gem "activeadmin", github: "activeadmin"
gem "active_skin"

gem "active_model_serializers"
gem "awesome_print"
# gem "cancancan" # roles
gem "carrierwave" # Great File upload
gem "daemons", "~> 1.2.2"
gem "devise" # Great Login
gem "fog" # Upload to cloud storage
gem "mini_magick" # For Img uploads
gem "modernizr-rails"
gem "net-ssh", "2.10.1.rc1" # version that is working for fog
gem "nokogiri" # required by premailer-rails
gem "premailer-rails" # turns css file into inline css fro emails
gem "proof-rails", github: "jcgertig/proof", branch: 'update_experation' # JWT authorization for api
gem "puma" # server settings
gem "rack-cors" # server settings
gem "rack-rewrite" # server settings
# gem "sidekiq"
# gem "stripe"
gem "validates" # active model validators
gem 'acts-as-taggable-on', '~> 3.4'

# REQUIRED #
gem "rails", "4.2.3"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "jbuilder", "~> 2.0"
gem "sdoc", "~> 0.4.0", group: :doc

# FOR HEROKU #
group :production do
  gem "pg"
  gem "rails_12factor"
end

group :development, :test do
  gem "better_errors"
  gem "certified"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "foreman"
  gem "pry-rails"
  gem "pry-remote"
  gem "pry-stack_explorer"
  gem "quiet_assets"
  gem "rails-erd"
  gem "rspec-rails"
  gem "spring"
  gem "guard"
  gem "guard-rspec"
  gem "rubocop"
  gem "rubocop-rspec"
  gem "guard-rubocop"
  gem "database_cleaner"
  gem "faker"
  gem "shoulda-matchers"
  gem "sqlite3"
  gem "capybara"
  gem "sextant", "~> 0.2.3" #Rails routes at /rails/routes without rake routes
  gem "annotate"
end

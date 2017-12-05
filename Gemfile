source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do

end

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'thor', '~> 0.20'
gem 'better_errors', '2.3.0'
gem 'devise'

group :development do
  gem 'listen', '~> 3.0.5'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'sqlite3'
end

gem 'pg', group: :production

gem 'bootstrap-sass'

# Password encryption
gem 'bcrypt'

# Environment Variables


gem 'figaro', '1.0'

gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

gem 'faker'

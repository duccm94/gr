source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.2"
gem "puma", "~> 3.4"
gem "bootstrap-sass", "~>3.3.6"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "devise", "~> 4.2"
gem "cancancan", "~> 1.15"
gem "inherited_resources", "~> 1.7"
gem "activeadmin", "~> 1.0.0.pre5"
gem "formtastic", "~> 3.1", ">= 3.1.5"
gem "ckeditor", "~> 4.2", ">= 4.2.2"
gem "public_activity", "~> 1.5"
gem "redis", "~> 3.3", ">= 3.3.3"

group :development, :test do
  gem "sqlite3"
  gem "byebug", platform: :mri
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "pg", "0.18.4"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

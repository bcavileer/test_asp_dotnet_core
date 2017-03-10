require 'capybara'
require 'capybara/cucumber'
# require 'pry'
# require 'dotenv'
# Dotenv.load

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host       = 'http://localhost:8000/'
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

World(Capybara)

Capybara.page.driver.browser.manage.window.maximize

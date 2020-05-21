require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'
require 'ffi'
require 'pry'
require 'date'
require 'rspec'
require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'

RSpec.configure do |config| 
  config.include Capybara::DSL  
  config.include Capybara::RSpecMatchers
end


case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options =  Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end

Capybara.configure do |config|
  config.default_driver = @driver
  
  config.default_max_wait_time = 10
end

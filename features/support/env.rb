require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'


Capybara.register_driver :selenium do |app|
   Capybara::Selenium::Driver.new(app, { js_errors: false, chrome_options: ['--nogui=True', '--disable-setuid-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222']})
end


Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless

    config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end


Capybara.default_max_wait_time = 10

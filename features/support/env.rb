require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'rspec'


require 'ffi'
require 'pry'


require 'date'

#chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil)

#chrome_opts = chrome_bin ? { "chromeOptions" => { "binary" => chrome_bin } } : {}

#Capybara.register_driver :selenium do |app|
   #Capybara::Selenium::Driver.new(app, { js_errors: false, chrome_options: ['no-sandbox', '--disable-setuid-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222']})
#end

Capybara.register_driver :chrome_headless do |app|
  options = ::Selenium::WebDriver::Chrome::Options.new

  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1400,1400')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :chrome_headless

# Setup rspec
RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :chrome_headless
  end
end



Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless

    config.app_host = 'https://des.quantumweb.com.br:4434/gofree/automatizado/site/'
end


Capybara.default_max_wait_time = 10

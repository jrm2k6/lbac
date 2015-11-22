require 'pry'
require 'rspec/expectations'
require 'capybara'
require 'capybara/mechanize'
require 'capybara/cucumber'
require 'test/unit/assertions'
require 'mechanize'
require 'selenium-webdriver'

World(Test::Unit::Assertions)

url = "http://#{ENV['BS_USERNAME']}:#{ENV['BS_AUTHKEY']}:@hub.browserstack.com/wd/hub"

Capybara.register_driver :browserstack do |app|
  	capabilities = Selenium::WebDriver::Remote::Capabilities.new

    capabilities['os'] = ENV['OS']
    capabilities['os_version'] = ENV['OS_VERSION']
    capabilities['browser'] = ENV['BROWSER']
    if ENV['BROWSER_VERSION']
        capabilities['browser_version'] = ENV['BROWSER_VERSION']
    end

    capabilities['browserstack.debug'] = true
    capabilities['browserstack.local'] = true
    Capybara::Selenium::Driver.new(app,
                                 :browser => :remote, :url => url,
                                 :desired_capabilities => capabilities)
end


Capybara.default_driver = :browserstack
Capybara.app_host = "http://localhost:8000"
Capybara.run_server = false

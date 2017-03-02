require 'rspec'
require 'site_prism'
require 'cucumber'
require 'pry'
require 'faker'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
#require 'chromedrive'


Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 15
	

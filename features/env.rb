require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'selenium-webdriver'




Capybara.default_driver = :selenium

#Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => chrome)
#  Capybara::Selenium::Driver.new(app, :browser => ie)
#end


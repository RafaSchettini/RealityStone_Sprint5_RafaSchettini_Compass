require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'capybara/cucumber'

ENVIRONMENT = ENV['ENVIRONMENT']
puts ENVIRONMENT

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br'
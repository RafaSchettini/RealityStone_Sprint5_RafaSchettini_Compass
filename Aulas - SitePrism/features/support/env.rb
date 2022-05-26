require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'capybara/cucumber'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG =  YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.default_driver = :selenium_chrome
Capybara.app_host = URL
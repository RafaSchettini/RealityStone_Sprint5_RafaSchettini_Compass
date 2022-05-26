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

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => 
        {"args" => ["--incognito","--start-maximized"]})
    
    if ENV['HEADLESS']
        caps["goog:chromeOptions"]["args"] << '--headless'
    end
    
    # options = { browser: :chrome, desired_capabilities: caps }
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: caps)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
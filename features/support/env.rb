#require 'capybara/cucumber'
require 'capybara'#servem para nao resetar a sessão 
require 'capybara/dsl'#servem para nao resetar a sessão 
require 'capybara/rspec/matchers'#servem para nao resetar a sessão 
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World(Capybara::DSL)#servem para nao resetar a sessão deixando eles global 
World(Capybara::RSpecMatchers)#servem para nao resetar a sessão deixando eles global 

World(Pages)
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10 
end
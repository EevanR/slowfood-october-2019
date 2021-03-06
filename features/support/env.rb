require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webdrivers'


ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Webdrivers::Chromedriver.version = '2.42' unless ENV['CI'] == 'true'

chrome_options = %w(no-sandbox disable-popup-blocking disable-infobars)
chrome_options << 'headless' if ENV['CI'] == 'true'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: chrome_options
  )
  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end

Capybara.server = :puma
Capybara.javascript_driver = :chrome

Warden.test_mode!
World Warden::Test::Helpers
After { Warden.test_reset! }

World FactoryBot::Syntax::Methods 
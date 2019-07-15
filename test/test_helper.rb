<<<<<<< HEAD

ActiveRecord::Migration.maintain_test_schema!
=======
>>>>>>> fa52d1c993abdfced59076e0ce7bee47d6e5d824
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

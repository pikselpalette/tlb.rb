require File.join(File.dirname(__FILE__), 'spec_common')
require 'rspec'

RSpec.configure do |config|
  config.mock_with :mocha
end

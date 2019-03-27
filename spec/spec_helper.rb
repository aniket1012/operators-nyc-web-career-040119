# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative '../lib/operations.rb'

RSpec.configure do |config|
  c.drb          = true
  c.drb_port     = 1234
  c.default_path = 'behavior'
end
end

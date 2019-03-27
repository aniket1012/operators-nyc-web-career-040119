# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative '../lib/operations.rb'

RSpec.configure do |config|
  # config here
  # context.example is deprecated, but RSpec.current_example is not
    # available until RSpec 3.0.
    fetch_current_example = RSpec.respond_to?(:current_example) ?
      proc { RSpec.current_example } : proc { |context| context.example }

    c.before(:example) do
      example = fetch_current_example.call(self)

      # ...
    end
  end

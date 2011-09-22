$: << File.expand_path('../../lib', __FILE__)

require 'string_additions'

RSpec.configure do |config|
  # Use color
  config.color_enabled = true

  # Use color in pagers
  config.tty = true

  # Use the specified format
  config.formatter = :documentation
end

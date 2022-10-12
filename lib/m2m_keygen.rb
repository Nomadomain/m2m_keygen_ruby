# typed: strict

require 'sorbet-runtime'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

# Main module
module M2mKeygen
  # Standard error for the gem
  class Error < StandardError
  end
end

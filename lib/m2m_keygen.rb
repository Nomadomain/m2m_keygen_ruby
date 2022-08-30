# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

# Main module
module M2mKeygen
  # Standard error for the gem
  class Error < StandardError
  end

  class Signature
    extend T::Sig

    sig { params(secret: String).void }
    def initialize(secret)
      @secret = T.let(secret, String)
    end

    sig { params(params: Types::ParamsType).returns(String) }
    def sign(params)
      ParamsEncoder.new(params).encode + "&secret=#{@secret}"
    end
  end
end

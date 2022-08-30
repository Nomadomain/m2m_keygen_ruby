# typed: strict

require "openssl"
require "json"

module M2mKeygen
  class Signature
    extend T::Sig

    sig { returns(String) }
    attr_reader :secret

    sig { returns(String) }
    attr_reader :algorithm

    sig { params(secret: String, algorithm: String).void }
    def initialize(secret, algorithm: "sha512")
      @secret = T.let(secret, String)
      @algorithm = T.let(algorithm, String)
      OpenSSL::HMAC.hexdigest(@algorithm, @secret, "")
    end

    sig do
      params(
        params: Types::ParamsType,
        verb: T.any(String, Symbol),
        path: String
      ).returns(String)
    end
    def sign(params:, verb:, path:)
      OpenSSL::HMAC.hexdigest(
        @algorithm,
        @secret,
        "#{verb.to_s.upcase}#{path}#{ParamsEncoder.new(params).encode}"
      )
    end

    sig do
      params(
        params: Types::ParamsType,
        verb: T.any(String, Symbol),
        path: String,
        signature: String
      ).returns(T::Boolean)
    end
    def validate(params:, verb:, path:, signature:)
      if OpenSSL.method_defined?(:fixed_length_secure_compare)
        OpenSSL.fixed_length_secure_compare(
          sign(params: params, verb: verb, path: path),
          signature
        )
      else
        fallback_fixed_length_secure_compare(
          sign(params: params, verb: verb, path: path),
          signature
        )
      end
    rescue StandardError
      false
    end

    private

    # Ruby 2.7 openssl lib doesn't have fixed_length_secure_compare method
    # File activesupport/lib/active_support/security_utils.rb, line 11
    # With sorbet fix
    sig { params(str_a: String, str_b: String).returns(T::Boolean) }
    def fallback_fixed_length_secure_compare(str_a, str_b)
      return false unless str_a.bytesize == str_b.bytesize

      l = str_a.unpack "C#{str_a.bytesize}"

      res = 0
      str_b.each_byte { |byte| res |= byte ^ l.shift.to_i }
      res == 0
    end
  end
end

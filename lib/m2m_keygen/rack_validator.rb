# typed: strict

require "rack"

module M2mKeygen
  class RackValidator
    extend T::Sig

    sig { returns(Signature) }
    attr_reader :signature

    sig { returns(String) }
    attr_reader :header_name

    sig { params(secret: String, algorithm: String, header_name: String).void }
    def initialize(secret, algorithm: "sha512", header_name: "X-Signature")
      @header_name = T.let("HTTP_#{header_name.tr("-", "_").upcase}", String)
      @signature = T.let(Signature.new(secret, algorithm: algorithm), Signature)
    end

    sig { params(req: Rack::Request).returns(T::Boolean) }
    def validate(req)
      # This will cover the case when Rails is used.
      req = Rack::Request.new(req.env)
      @signature.validate(
        params: req.params,
        verb: req.request_method,
        path: req.path,
        signature: req.env["HTTP_X_SIGNATURE"]
      ) && req.params["expiry"] && req.params["expiry"].to_i > Time.now.to_i &&
        req.params["expiry"].to_i < Time.now.to_i + 120
    end
  end
end

# typed: false

require "rack"

class OverRackRequest < Rack::Request
end

describe M2mKeygen::RackValidator do
  let(:secret) { "secret" }
  let(:algorithm) { "sha512" }
  let(:header_name) { "X-Signature" }
  let(:validator) do
    M2mKeygen::RackValidator.new(
      secret,
      algorithm: algorithm,
      header_name: header_name
    )
  end
  let(:params) do
    {
      "expiry" => expiry,
      "b" => "1",
      "a" => "2",
      "c" => %w[ok nok],
      "d" => {
        "e" => "4",
        "f" => "3"
      }
    }
  end
  let(:signature) do
    validator.signature.sign(params: params, verb: "GET", path: "/path")
  end
  let(:expiry) { Time.now.to_i + 60 }
  let(:query_string) { "expiry=#{expiry}&b=1&a=2&c[]=ok&c[]=nok&d[f]=3&d[e]=4" }
  let(:method) { "GET" }
  let(:path) { "/path" }
  let(:req_env) do
    {
      "HTTP_X_SIGNATURE" => signature,
      "rack.url_scheme" => "http",
      "QUERY_STRING" => query_string,
      "REQUEST_METHOD" => method,
      "REQUEST_PATH" => path,
      "HTTP_VERSION" => "HTTP/1.1",
      "HTTP_HOST" => "localhost:3000",
      "PATH_INFO" => path,
      "rack.input" => StringIO.new(query_string)
    }
  end
  let(:req) { Rack::Request.new(req_env) }

  describe "initialization" do
    it "initializes the signature with the secret and the algorithm" do
      expect(M2mKeygen::Signature).to receive(:new).with(
        secret,
        algorithm: algorithm
      ).and_call_original
      expect(validator.signature).to be_a(M2mKeygen::Signature)
    end

    it "formats the header name" do
      expect(validator.header_name).to eq("HTTP_X_SIGNATURE")
    end
  end

  describe "validate" do
    subject { validator.validate(req) }

    it "works in normal case" do
      expect(validator.validate(req)).to be_truthy
    end

    context "when the signature is invalid" do
      let(:signature) { "invalid" }

      it { is_expected.to be_falsey }
    end

    context "when the expiry is in the past" do
      let(:expiry) { Time.now.to_i - 60 }

      it { is_expected.to be_falsey }
    end

    context "when the expiry is to far in the future" do
      let(:expiry) { Time.now.to_i + 260 }

      it { is_expected.to be_falsey }
    end

    context "when the verb is different from the one in the request" do
      let(:method) { "POST" }

      it { is_expected.to be_falsey }
    end

    context "when the path is different from the one in the request" do
      let(:path) { "/path/else" }

      it { is_expected.to be_falsey }
    end

    context "when the query string is different from the one in the request" do
      let(:query_string) do
        "expiry=#{expiry}&b=1&a=2&c[]=ok&c[]=nok&d[f]=3&d[e]=4&g=5"
      end

      it { is_expected.to be_falsey }
    end

    context "when the request is not a direct Rack::Request" do
      let(:req) { OverRackRequest.new(req_env) }

      it { is_expected.to be_truthy }
    end
  end
end

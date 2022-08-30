# typed: false

describe M2mKeygen::ParamsEncoder do
  let(:encoder) { M2mKeygen::ParamsEncoder.new(params) }

  describe "simple use case" do
    let(:params) { { "a" => "1", "b" => "2" } }

    it "encodes params" do
      expect(encoder.encode).to eq("a=1&b=2")
    end
  end

  describe "empty params" do
    let(:params) { {} }

    it "encodes params" do
      expect(encoder.encode).to eq("")
    end
  end

  describe "nil params" do
    let(:params) { nil }

    it "encodes params" do
      expect(encoder.encode).to eq("")
    end
  end

  describe "params with nil value" do
    let(:params) { { "a" => "1", "b" => nil } }

    it "encodes params" do
      expect(encoder.encode).to eq("a=1")
    end
  end

  describe "params with empty string value" do
    let(:params) { { "a" => "1", "b" => "" } }

    it "encodes params" do
      expect(encoder.encode).to eq("a=1")
    end
  end

  context "when params are not alphabetical" do
    let(:params) { { "c" => "1", "a" => "2", "b" => "3" } }

    it "encodes params" do
      expect(encoder.encode).to eq("a=2&b=3&c=1")
    end
  end

  describe "array value" do
    context "with empty array value" do
      let(:params) { { "a" => "1", "b" => [] } }

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b=[]")
      end
    end

    context "with array value" do
      let(:params) { { "a" => "1", "b" => %w[1 2] } }

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b=[\"1\",\"2\"]")
      end
    end
  end

  describe "hash value" do
    context "with empty hash value" do
      let(:params) { { "a" => "1", "b" => {} } }

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b={}")
      end
    end

    context "with hash value" do
      let(:params) { { "a" => "1", "b" => { "c" => "1", "d" => 2 } } }

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b={\"c\":\"1\",\"d\":2}")
      end
    end

    context "with hash value with array value" do
      let(:params) { { "a" => "1", "b" => { "d" => %w[1 2], :c => 1 } } }

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b={\"c\":1,\"d\":[\"1\",\"2\"]}")
      end
    end

    context "with hash value with hash value" do
      let(:params) do
        { "a" => 1, "b" => { "d" => { :f => 3, "e" => 1 }, :c => 1 } }
      end

      it "encodes params" do
        expect(encoder.encode).to eq("a=1&b={\"c\":1,\"d\":{\"e\":1,\"f\":3}}")
      end
    end
  end
end

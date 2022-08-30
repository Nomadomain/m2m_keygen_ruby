# typed: strict

module M2mKeygen
  # Encoder for params hash
  class ParamsEncoder
    extend T::Sig

    sig { params(params: Types::ParamsType).void }
    def initialize(params)
      @params = T.let(params, Types::ParamsType)
    end

    sig { returns(String) }
    def encode
      return "" if @params.nil? || @params.empty?
      @params
        .sort_by { |k, _| k.to_s }
        .reject { |_, v| (v.is_a?(String) && v == "") || v.nil? }
        .map { |k, v| "#{k}=#{jsonify_value(encode_value(T.must(v)))}" }
        .join("&")
    end

    private

    sig do
      params(value: Types::ParamsValueType).returns(
        T.any(String, Symbol, Integer)
      )
    end
    def jsonify_value(value)
      return value unless value.is_a?(Hash) || value.is_a?(Array)
      value.to_json
    end

    sig do
      params(value: Types::ParamsValueType).returns(Types::ParamsValueType)
    end
    def encode_value(value)
      return encode_hash_value(value) if value.is_a?(Hash)
      value
    end

    sig do
      params(value: Types::ParamsHashNotNilType).returns(
        T::Hash[String, Types::ParamsValueType]
      )
    end
    def encode_hash_value(value)
      value
        .sort_by { |k, _| k.to_s }
        .reject { |_, v| (v.is_a?(String) && v == "") || v.nil? }
        .map { |k, v| [k.to_s, encode_value(v)] }
        .to_h
    end
  end
end

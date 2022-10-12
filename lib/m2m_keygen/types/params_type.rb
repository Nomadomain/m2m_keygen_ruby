# typed: strict
module M2mKeygen
  module Types
    extend T::Sig

    ParamsType =
      T.type_alias do
        T.nilable(T::Hash[T.any(String, Symbol), T.nilable(ParamsValueType)])
      end

    ParamsHashNotNilType =
      T.type_alias { T::Hash[T.any(String, Symbol), ParamsValueType] }

    ParamsValueType =
      T.type_alias do
        T.any(
          Integer,
          String,
          Symbol,
          T::Array[T.untyped],
          T::Hash[T.untyped, T.untyped],
        )
      end
  end
end

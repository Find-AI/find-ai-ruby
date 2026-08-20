# typed: strong

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(FindAI::SearchRetrieveParams, FindAI::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: FindAI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig do
        override.returns(
          { id: String, request_options: FindAI::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end

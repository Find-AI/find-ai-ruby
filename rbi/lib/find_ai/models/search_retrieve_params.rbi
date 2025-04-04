# typed: strong

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      sig do
        params(
          request_options: T.any(
            FindAI::RequestOptions,
            FindAI::Internal::AnyHash
          )
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: FindAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end

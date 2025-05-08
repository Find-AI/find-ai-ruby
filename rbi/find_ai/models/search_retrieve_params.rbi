# typed: strong

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, FindAI::Internal::AnyHash) }

      sig do
        params(request_options: FindAI::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: FindAI::RequestOptions }) }
      def to_hash
      end
    end
  end
end

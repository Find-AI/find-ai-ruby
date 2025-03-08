# typed: strong

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::BaseModel
      extend FindAI::RequestParameters::Converter
      include FindAI::RequestParameters

      sig do
        params(request_options: T.any(FindAI::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: FindAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end

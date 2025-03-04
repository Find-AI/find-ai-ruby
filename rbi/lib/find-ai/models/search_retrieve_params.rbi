# typed: strong

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::BaseModel
      extend FindAI::RequestParameters::Converter
      include FindAI::RequestParameters

      sig { params(request_options: T.any(FindAI::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: FindAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end

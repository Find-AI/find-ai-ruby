# typed: strong

module FindAI
  module Resources
    class Searches
      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: Symbol,
          scope: Symbol,
          request_options: T.nilable(T.any(FindAI::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(FindAI::Models::SearchCreateResponse)
      end
      def create(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              FindAI::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
        )
          .returns(FindAI::Models::SearchRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      sig { params(client: FindAI::Client).void }
      def initialize(client:)
      end
    end
  end
end

# typed: strong

module FindAI
  module Resources
    class Searches
      # Starts a search.
      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol,
          scope: FindAI::Models::SearchCreateParams::Scope::OrSymbol,
          request_options: T.nilable(T.any(FindAI::RequestOptions, FindAI::Util::AnyHash))
        )
          .returns(FindAI::Models::SearchCreateResponse)
      end
      def create(
        # The maximum number of results to return. optional for result_mode exact
        max_matches: nil,
        # Search query.
        query: nil,
        # The mode of the search. Valid values are 'exact' or 'best'.
        result_mode: nil,
        # The scope of the search. Valid values are 'person' or 'company'.
        scope: nil,
        request_options: {}
      )
      end

      # The endpoint to poll to check the latest results of a search.
      sig do
        params(id: String, request_options: T.nilable(T.any(FindAI::RequestOptions, FindAI::Util::AnyHash)))
          .returns(T::Array[FindAI::Models::SearchRetrieveResponseItem])
      end
      def retrieve(
        # The id returned with your initial API call.
        id,
        request_options: {}
      )
      end

      sig { params(client: FindAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

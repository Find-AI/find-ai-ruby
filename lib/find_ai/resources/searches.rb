# frozen_string_literal: true

module FindAI
  module Resources
    class Searches
      # Starts a search.
      #
      # @overload create(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
      #
      # @param max_matches [Float] The maximum number of results to return. optional for result_mode exact
      #
      # @param query [String] Search query.
      #
      # @param result_mode [Symbol, FindAI::Models::SearchCreateParams::ResultMode] The mode of the search. Valid values are 'exact' or 'best'.
      #
      # @param scope [Symbol, FindAI::Models::SearchCreateParams::Scope] The scope of the search. Valid values are 'person' or 'company'.
      #
      # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FindAI::Models::SearchCreateResponse]
      #
      # @see FindAI::Models::SearchCreateParams
      def create(params = {})
        parsed, options = FindAI::SearchCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/searches",
          body: parsed,
          model: FindAI::Models::SearchCreateResponse,
          options: options
        )
      end

      # The endpoint to poll to check the latest results of a search.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id returned with your initial API call.
      #
      # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<FindAI::Models::SearchRetrieveResponseItem>]
      #
      # @see FindAI::Models::SearchRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/searches/%1$s", id],
          model: FindAI::Internal::Type::ArrayOf[FindAI::Models::SearchRetrieveResponseItem],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [FindAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

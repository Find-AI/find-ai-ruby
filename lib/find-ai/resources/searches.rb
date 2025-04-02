# frozen_string_literal: true

module FindAI
  module Resources
    class Searches
      # Starts a search.
      #
      # @param params [FindAI::Models::SearchCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Float] :max_matches The maximum number of results to return. optional for result_mode exact
      #
      #   @option params [String] :query Search query.
      #
      #   @option params [Symbol, FindAI::Models::SearchCreateParams::ResultMode] :result_mode The mode of the search. Valid values are 'exact' or 'best'.
      #
      #   @option params [Symbol, FindAI::Models::SearchCreateParams::Scope] :scope The scope of the search. Valid values are 'person' or 'company'.
      #
      #   @option params [FindAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [FindAI::Models::SearchCreateResponse]
      def create(params = {})
        parsed, options = FindAI::Models::SearchCreateParams.dump_request(params)
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
      # @param id [String] The id returned with your initial API call.
      #
      # @param params [FindAI::Models::SearchRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [FindAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<FindAI::Models::SearchRetrieveResponseItem>]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/searches/%1$s", id],
          model: FindAI::ArrayOf[FindAI::Models::SearchRetrieveResponseItem],
          options: params[:request_options]
        )
      end

      # @param client [FindAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

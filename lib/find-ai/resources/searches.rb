# frozen_string_literal: true

module FindAI
  module Resources
    class Searches
      def initialize(client:)
        @client = client
      end

      # Starts a search.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Float, nil] :max_matches The maximum number of results to return. optional for result_mode exact
      # @option params [String, nil] :query Search query.
      # @option params [Symbol, ResultMode, nil] :result_mode The mode of the search. Valid values are 'exact' or 'best'.
      # @option params [Symbol, Scope, nil] :scope The scope of the search. Valid values are 'person' or 'company'.
      #
      # @param opts [Hash, FindAI::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [FindAI::Models::SearchCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/v1/searches",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: FindAI::Models::SearchCreateResponse
        }
        @client.request(req, opts)
      end

      # The endpoint to poll to check the latest results of a search.
      #
      # @param id [String] The id returned with your initial API call.
      # @param opts [Hash, FindAI::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Array<FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse>]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/v1/searches/#{id}",
          model: FindAI::ArrayOf.new(FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse)
        }
        @client.request(req, opts)
      end
    end
  end
end

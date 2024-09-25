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
      # @option params [Float] :max_matches The maximum number of results to return. optional for result_mode exact
      # @option params [String] :query Search query.
      # @option params [String] :result_mode The mode of the search. Valid values are 'exact' or 'best'.
      # @option params [String] :scope The scope of the search. Valid values are 'people' or 'companies'.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [FindAI::Models::SearchCreateResponse]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/v1/searches"
        req[:body] = params
        req[:model] = FindAI::Models::SearchCreateResponse
        @client.request(req, opts)
      end

      # The endpoint to poll to check the latest results of a search.
      #
      # @param id [String] The id returned with your initial API call.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Array<FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse>]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/v1/searches/#{id}"
        req[:model] = FindAI::ArrayOf.new(FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse)
        @client.request(req, opts)
      end
    end
  end
end

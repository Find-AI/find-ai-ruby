# frozen_string_literal: true

module FindAI
  module Resources
    class Searches
      # Starts a search.
      #
      # @overload create(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
      #
      # @param max_matches [Float]
      # @param query [String]
      # @param result_mode [Symbol, FindAI::Models::SearchCreateParams::ResultMode]
      # @param scope [Symbol, FindAI::Models::SearchCreateParams::Scope]
      # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FindAI::Models::SearchCreateResponse]
      #
      # @see FindAI::Models::SearchCreateParams
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
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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

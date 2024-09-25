# frozen_string_literal: true

module FindAI
  module Resources
    class PeopleEnrichment
      class Enrich
        def initialize(client:)
          @client = client
        end

        # Returns structured data about a person based on their business email address.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :email The person's business email address. We won't accept personal email address such
        #   as Gmail, Yahoo etc.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [FindAI::Models::EnrichCreateResponse]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/v1/people/enrich"
          req[:body] = params
          req[:model] = FindAI::Models::EnrichCreateResponse
          @client.request(req, opts)
        end

        # The endpoint to poll to check the latest results when data about a person isn't
        #   immediately available.
        #
        # @param token [String] The token returned with your initial API call.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [FindAI::Models::EnrichRetrieveResponse]
        def retrieve(token, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/v1/people/enrich/#{token}"
          req[:model] = FindAI::Models::EnrichRetrieveResponse
          @client.request(req, opts)
        end
      end
    end
  end
end

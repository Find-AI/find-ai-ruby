# frozen_string_literal: true

module FindAI
  module Resources
    class CompanyEnrichment
      class Enrich
        def initialize(client:)
          @client = client
        end

        # Returns structured data about a company based on a domain input.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :domain The domain of the company.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [FindAI::Models::EnrichCreateResponse]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/v1/companies/enrich"
          req[:body] = params
          req[:model] = FindAI::Models::EnrichCreateResponse
          @client.request(req, opts)
        end

        # The endpoint to poll to check the latest results when data about a company isn't
        #   immediately available
        #
        # @param token [String] The token returned with your initial API call.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [FindAI::Models::EnrichRetrieveResponse]
        def retrieve(token, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/v1/companies/enrich/#{token}"
          req[:model] = FindAI::Models::EnrichRetrieveResponse
          @client.request(req, opts)
        end
      end
    end
  end
end

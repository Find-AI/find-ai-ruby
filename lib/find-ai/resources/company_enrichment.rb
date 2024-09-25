# frozen_string_literal: true

module FindAI
  module Resources
    class CompanyEnrichment
      # @return [FindAI::Resources::CompanyEnrichment::Enrich]
      attr_reader :enrich

      def initialize(client:)
        @client = client
        @enrich = FindAI::Resources::CompanyEnrichment::Enrich.new(client: client)
      end
    end
  end
end

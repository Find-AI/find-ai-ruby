# frozen_string_literal: true

module FindAI
  module Resources
    class PeopleEnrichment
      # @return [FindAI::Resources::PeopleEnrichment::Enrich]
      attr_reader :enrich

      # @param client [FindAI::Client]
      def initialize(client:)
        @client = client
        @enrich = FindAI::Resources::PeopleEnrichment::Enrich.new(client: client)
      end
    end
  end
end

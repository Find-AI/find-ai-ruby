# frozen_string_literal: true

module FindAI
  module Resources
    class PeopleEnrichment
      class Enrich
        # @param client [FindAI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end

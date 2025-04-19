# frozen_string_literal: true

module FindAI
  module Models
    # @see FindAI::Resources::Searches#create
    class SearchCreateResponse < FindAI::Internal::Type::BaseModel
      # @!attribute poll
      #
      #   @return [FindAI::Models::SearchCreateResponse::Poll]
      required :poll, -> { FindAI::Models::SearchCreateResponse::Poll }

      # @!method initialize(poll:)
      #   @param poll [FindAI::Models::SearchCreateResponse::Poll]

      # @see FindAI::Models::SearchCreateResponse#poll
      class Poll < FindAI::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute path
        #
        #   @return [String]
        required :path, String

        # @!method initialize(token:, path:)
        #   @param token [String]
        #   @param path [String]
      end
    end
  end
end

# frozen_string_literal: true

module FindAI
  module Models
    # @see FindAI::Resources::Searches#create
    class SearchCreateResponse < FindAI::BaseModel
      # @!attribute poll
      #
      #   @return [FindAI::Models::SearchCreateResponse::Poll]
      required :poll, -> { FindAI::Models::SearchCreateResponse::Poll }

      # @!parse
      #   # @param poll [FindAI::Models::SearchCreateResponse::Poll]
      #   #
      #   def initialize(poll:, **) = super

      # def initialize: (Hash | FindAI::BaseModel) -> void

      # @see FindAI::Models::SearchCreateResponse#poll
      class Poll < FindAI::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute path
        #
        #   @return [String]
        required :path, String

        # @!parse
        #   # @param token [String]
        #   # @param path [String]
        #   #
        #   def initialize(token:, path:, **) = super

        # def initialize: (Hash | FindAI::BaseModel) -> void
      end
    end
  end
end

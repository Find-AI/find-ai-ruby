# frozen_string_literal: true

module FindAI
  module Models
    class SearchCreateResponse < FindAI::BaseModel
      # @!attribute [rw] poll
      #   @return [FindAI::Models::SearchCreateResponse::Poll]
      required :poll, -> { FindAI::Models::SearchCreateResponse::Poll }

      class Poll < FindAI::BaseModel
        # @!attribute [rw] token
        #   @return [String]
        required :token, String

        # @!attribute [rw] path
        #   @return [String]
        required :path, String

        # @!parse
        #   # Create a new instance of Poll from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :token
        #   #   @option data [String] :path
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of SearchCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :poll
      #   def initialize(data = {}) = super
    end
  end
end

# frozen_string_literal: true

module FindAI
  module Models
    class SearchCreateResponse < BaseModel
      # @!attribute [rw] poll
      #   @return [FindAI::Models::SearchCreateResponse::Poll]
      required :poll, -> { FindAI::Models::SearchCreateResponse::Poll }

      class Poll < BaseModel
        # @!attribute [rw] token
        #   @return [String]
        required :token, String

        # @!attribute [rw] path
        #   @return [String]
        required :path, String
      end
    end
  end
end

# frozen_string_literal: true

module FindAI
  module Models
    # @see FindAI::Resources::Searches#retrieve
    class SearchRetrieveParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

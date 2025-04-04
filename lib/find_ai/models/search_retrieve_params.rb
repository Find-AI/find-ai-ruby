# frozen_string_literal: true

module FindAI
  module Models
    # @see FindAI::Resources::Searches#retrieve
    class SearchRetrieveParams < FindAI::BaseModel
      # @!parse
      #   extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | FindAI::BaseModel) -> void
    end
  end
end

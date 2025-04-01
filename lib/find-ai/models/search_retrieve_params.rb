# frozen_string_literal: true

module FindAI
  module Models
    class SearchRetrieveParams < FindAI::BaseModel
      # @!parse
      #   extend FindAI::Type::RequestParameters::Converter
      include FindAI::RequestParameters

      # @!parse
      #   # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | FindAI::BaseModel) -> void
    end
  end
end

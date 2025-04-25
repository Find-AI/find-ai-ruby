# frozen_string_literal: true

module FindAI
  module Models
    # @see FindAI::Resources::Searches#create
    class SearchCreateParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      # @!attribute max_matches
      #   The maximum number of results to return. optional for result_mode exact
      #
      #   @return [Float, nil]
      optional :max_matches, Float

      # @!attribute query
      #   Search query.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute result_mode
      #   The mode of the search. Valid values are 'exact' or 'best'.
      #
      #   @return [Symbol, FindAI::Models::SearchCreateParams::ResultMode, nil]
      optional :result_mode, enum: -> { FindAI::Models::SearchCreateParams::ResultMode }

      # @!attribute scope
      #   The scope of the search. Valid values are 'person' or 'company'.
      #
      #   @return [Symbol, FindAI::Models::SearchCreateParams::Scope, nil]
      optional :scope, enum: -> { FindAI::Models::SearchCreateParams::Scope }

      # @!method initialize(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
      #   @param max_matches [Float] The maximum number of results to return. optional for result_mode exact
      #
      #   @param query [String] Search query.
      #
      #   @param result_mode [Symbol, FindAI::Models::SearchCreateParams::ResultMode] The mode of the search. Valid values are 'exact' or 'best'.
      #
      #   @param scope [Symbol, FindAI::Models::SearchCreateParams::Scope] The scope of the search. Valid values are 'person' or 'company'.
      #
      #   @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}]

      # The mode of the search. Valid values are 'exact' or 'best'.
      module ResultMode
        extend FindAI::Internal::Type::Enum

        EXACT = :exact
        BEST = :best

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      module Scope
        extend FindAI::Internal::Type::Enum

        PERSON = :person
        COMPANY = :company

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

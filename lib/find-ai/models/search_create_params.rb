# frozen_string_literal: true

module FindAI
  module Models
    class SearchCreateParams < FindAI::BaseModel
      # @!parse
      #   extend FindAI::RequestParameters::Converter
      include FindAI::RequestParameters

      # @!attribute [r] max_matches
      #   The maximum number of results to return. optional for result_mode exact
      #
      #   @return [Float, nil]
      optional :max_matches, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :max_matches

      # @!attribute [r] query
      #   Search query.
      #
      #   @return [String, nil]
      optional :query, String

      # @!parse
      #   # @return [String]
      #   attr_writer :query

      # @!attribute [r] result_mode
      #   The mode of the search. Valid values are 'exact' or 'best'.
      #
      #   @return [Symbol, FindAI::Models::SearchCreateParams::ResultMode, nil]
      optional :result_mode, enum: -> { FindAI::Models::SearchCreateParams::ResultMode }

      # @!parse
      #   # @return [Symbol, FindAI::Models::SearchCreateParams::ResultMode]
      #   attr_writer :result_mode

      # @!attribute [r] scope
      #   The scope of the search. Valid values are 'person' or 'company'.
      #
      #   @return [Symbol, FindAI::Models::SearchCreateParams::Scope, nil]
      optional :scope, enum: -> { FindAI::Models::SearchCreateParams::Scope }

      # @!parse
      #   # @return [Symbol, FindAI::Models::SearchCreateParams::Scope]
      #   attr_writer :scope

      # @!parse
      #   # @param max_matches [Float]
      #   # @param query [String]
      #   # @param result_mode [Symbol, FindAI::Models::SearchCreateParams::ResultMode]
      #   # @param scope [Symbol, FindAI::Models::SearchCreateParams::Scope]
      #   # @param request_options [FindAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {}, **) = super

      # def initialize: (Hash | FindAI::BaseModel) -> void

      # The mode of the search. Valid values are 'exact' or 'best'.
      module ResultMode
        extend FindAI::Enum

        EXACT = :exact
        BEST = :best

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      module Scope
        extend FindAI::Enum

        PERSON = :person
        COMPANY = :company

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end

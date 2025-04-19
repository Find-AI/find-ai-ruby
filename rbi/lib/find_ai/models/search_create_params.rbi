# typed: strong

module FindAI
  module Models
    class SearchCreateParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      # The maximum number of results to return. optional for result_mode exact
      sig { returns(T.nilable(Float)) }
      attr_reader :max_matches

      sig { params(max_matches: Float).void }
      attr_writer :max_matches

      # Search query.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # The mode of the search. Valid values are 'exact' or 'best'.
      sig { returns(T.nilable(FindAI::Models::SearchCreateParams::ResultMode::OrSymbol)) }
      attr_reader :result_mode

      sig { params(result_mode: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol).void }
      attr_writer :result_mode

      # The scope of the search. Valid values are 'person' or 'company'.
      sig { returns(T.nilable(FindAI::Models::SearchCreateParams::Scope::OrSymbol)) }
      attr_reader :scope

      sig { params(scope: FindAI::Models::SearchCreateParams::Scope::OrSymbol).void }
      attr_writer :scope

      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol,
          scope: FindAI::Models::SearchCreateParams::Scope::OrSymbol,
          request_options: T.any(FindAI::RequestOptions, FindAI::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              max_matches: Float,
              query: String,
              result_mode: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol,
              scope: FindAI::Models::SearchCreateParams::Scope::OrSymbol,
              request_options: FindAI::RequestOptions
            }
          )
      end
      def to_hash; end

      # The mode of the search. Valid values are 'exact' or 'best'.
      module ResultMode
        extend FindAI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FindAI::Models::SearchCreateParams::ResultMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXACT = T.let(:exact, FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol)
        BEST = T.let(:best, FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol)

        sig { override.returns(T::Array[FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol]) }
        def self.values; end
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      module Scope
        extend FindAI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FindAI::Models::SearchCreateParams::Scope) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSON = T.let(:person, FindAI::Models::SearchCreateParams::Scope::TaggedSymbol)
        COMPANY = T.let(:company, FindAI::Models::SearchCreateParams::Scope::TaggedSymbol)

        sig { override.returns(T::Array[FindAI::Models::SearchCreateParams::Scope::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end

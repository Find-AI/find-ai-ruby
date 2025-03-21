# typed: strong

module FindAI
  module Models
    class SearchCreateParams < FindAI::BaseModel
      extend FindAI::RequestParameters::Converter
      include FindAI::RequestParameters

      # The maximum number of results to return. optional for result_mode exact
      sig { returns(T.nilable(Float)) }
      def max_matches
      end

      sig { params(_: Float).returns(Float) }
      def max_matches=(_)
      end

      # Search query.
      sig { returns(T.nilable(String)) }
      def query
      end

      sig { params(_: String).returns(String) }
      def query=(_)
      end

      # The mode of the search. Valid values are 'exact' or 'best'.
      sig { returns(T.nilable(FindAI::Models::SearchCreateParams::ResultMode::OrSymbol)) }
      def result_mode
      end

      sig do
        params(_: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol)
          .returns(FindAI::Models::SearchCreateParams::ResultMode::OrSymbol)
      end
      def result_mode=(_)
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      sig { returns(T.nilable(FindAI::Models::SearchCreateParams::Scope::OrSymbol)) }
      def scope
      end

      sig do
        params(_: FindAI::Models::SearchCreateParams::Scope::OrSymbol)
          .returns(FindAI::Models::SearchCreateParams::Scope::OrSymbol)
      end
      def scope=(_)
      end

      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: FindAI::Models::SearchCreateParams::ResultMode::OrSymbol,
          scope: FindAI::Models::SearchCreateParams::Scope::OrSymbol,
          request_options: T.any(FindAI::RequestOptions, FindAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
      end

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
      def to_hash
      end

      # The mode of the search. Valid values are 'exact' or 'best'.
      module ResultMode
        extend FindAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FindAI::Models::SearchCreateParams::ResultMode) }
        OrSymbol = T.type_alias { T.any(Symbol, FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol) }

        EXACT = T.let(:exact, FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol)
        BEST = T.let(:best, FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FindAI::Models::SearchCreateParams::ResultMode::TaggedSymbol]) }
          def values
          end
        end
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      module Scope
        extend FindAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FindAI::Models::SearchCreateParams::Scope) }
        OrSymbol = T.type_alias { T.any(Symbol, FindAI::Models::SearchCreateParams::Scope::TaggedSymbol) }

        PERSON = T.let(:person, FindAI::Models::SearchCreateParams::Scope::TaggedSymbol)
        COMPANY = T.let(:company, FindAI::Models::SearchCreateParams::Scope::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FindAI::Models::SearchCreateParams::Scope::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end

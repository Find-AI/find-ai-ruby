# typed: strong

module FindAI
  module Models
    class SearchCreateParams < FindAI::Internal::Type::BaseModel
      extend FindAI::Internal::Type::RequestParameters::Converter
      include FindAI::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, FindAI::Internal::AnyHash) }

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
      sig do
        returns(T.nilable(FindAI::SearchCreateParams::ResultMode::OrSymbol))
      end
      attr_reader :result_mode

      sig do
        params(
          result_mode: FindAI::SearchCreateParams::ResultMode::OrSymbol
        ).void
      end
      attr_writer :result_mode

      # The scope of the search. Valid values are 'person' or 'company'.
      sig { returns(T.nilable(FindAI::SearchCreateParams::Scope::OrSymbol)) }
      attr_reader :scope

      sig { params(scope: FindAI::SearchCreateParams::Scope::OrSymbol).void }
      attr_writer :scope

      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: FindAI::SearchCreateParams::ResultMode::OrSymbol,
          scope: FindAI::SearchCreateParams::Scope::OrSymbol,
          request_options: FindAI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The maximum number of results to return. optional for result_mode exact
        max_matches: nil,
        # Search query.
        query: nil,
        # The mode of the search. Valid values are 'exact' or 'best'.
        result_mode: nil,
        # The scope of the search. Valid values are 'person' or 'company'.
        scope: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            max_matches: Float,
            query: String,
            result_mode: FindAI::SearchCreateParams::ResultMode::OrSymbol,
            scope: FindAI::SearchCreateParams::Scope::OrSymbol,
            request_options: FindAI::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The mode of the search. Valid values are 'exact' or 'best'.
      module ResultMode
        extend FindAI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FindAI::SearchCreateParams::ResultMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXACT =
          T.let(:exact, FindAI::SearchCreateParams::ResultMode::TaggedSymbol)
        BEST =
          T.let(:best, FindAI::SearchCreateParams::ResultMode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[FindAI::SearchCreateParams::ResultMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      module Scope
        extend FindAI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FindAI::SearchCreateParams::Scope) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSON = T.let(:person, FindAI::SearchCreateParams::Scope::TaggedSymbol)
        COMPANY =
          T.let(:company, FindAI::SearchCreateParams::Scope::TaggedSymbol)

        sig do
          override.returns(
            T::Array[FindAI::SearchCreateParams::Scope::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

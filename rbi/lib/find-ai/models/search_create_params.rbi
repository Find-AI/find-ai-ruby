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
      sig { returns(T.nilable(Symbol)) }
      def result_mode
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result_mode=(_)
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      sig { returns(T.nilable(Symbol)) }
      def scope
      end

      sig { params(_: Symbol).returns(Symbol) }
      def scope=(_)
      end

      sig do
        params(
          max_matches: Float,
          query: String,
          result_mode: Symbol,
          scope: Symbol,
          request_options: T.any(FindAI::RequestOptions, T::Hash[Symbol, T.anything])
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
              result_mode: Symbol,
              scope: Symbol,
              request_options: FindAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The mode of the search. Valid values are 'exact' or 'best'.
      class ResultMode < FindAI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        EXACT = :exact
        BEST = :best
      end

      # The scope of the search. Valid values are 'person' or 'company'.
      class Scope < FindAI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PERSON = :person
        COMPANY = :company
      end
    end
  end
end

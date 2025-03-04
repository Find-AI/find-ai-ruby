# typed: strong

module FindAI
  module Models
    class SearchCreateParams < FindAI::BaseModel
      extend FindAI::RequestParameters::Converter
      include FindAI::RequestParameters

      sig { returns(T.nilable(Float)) }
      def max_matches
      end

      sig { params(_: Float).returns(Float) }
      def max_matches=(_)
      end

      sig { returns(T.nilable(String)) }
      def query
      end

      sig { params(_: String).returns(String) }
      def query=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def result_mode
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result_mode=(_)
      end

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
          .void
      end
      def initialize(max_matches: nil, query: nil, result_mode: nil, scope: nil, request_options: {})
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

      class ResultMode < FindAI::Enum
        abstract!

        EXACT = :exact
        BEST = :best

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Scope < FindAI::Enum
        abstract!

        PERSON = :person
        COMPANY = :company

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end

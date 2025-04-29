# typed: strong

module FindAI
  module Models
    class SearchRetrieveResponseItem < FindAI::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :linkedin_url

      sig { returns(String) }
      attr_accessor :name

      # Returned only for a person.
      sig { returns(T.nilable(String)) }
      attr_reader :company

      sig { params(company: String).void }
      attr_writer :company

      sig { returns(T.nilable(T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason])) }
      attr_reader :criteria_and_reasons

      sig do
        params(
          criteria_and_reasons: T::Array[T.any(FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason, FindAI::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :criteria_and_reasons

      # Returned only for a company.
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # The status of the search result.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Returned only for a person.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          linkedin_url: String,
          name: String,
          company: String,
          criteria_and_reasons: T::Array[T.any(FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason, FindAI::Internal::AnyHash)],
          domain: String,
          status: String,
          title: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        linkedin_url:,
        name:,
        # Returned only for a person.
        company: nil,
        criteria_and_reasons: nil,
        # Returned only for a company.
        domain: nil,
        # The status of the search result.
        status: nil,
        # Returned only for a person.
        title: nil
      ); end
      sig do
        override
          .returns(
            {
              linkedin_url: String,
              name: String,
              company: String,
              criteria_and_reasons: T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason],
              domain: String,
              status: String,
              title: String
            }
          )
      end
      def to_hash; end

      class CriteriaAndReason < FindAI::Internal::Type::BaseModel
        # Match criteria
        sig { returns(T.nilable(String)) }
        attr_reader :criteria

        sig { params(criteria: String).void }
        attr_writer :criteria

        # Whether it's a match
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :match

        sig { params(match: T::Boolean).void }
        attr_writer :match

        # Reason for the match
        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        sig { params(criteria: String, match: T::Boolean, reason: String).returns(T.attached_class) }
        def self.new(
          # Match criteria
          criteria: nil,
          # Whether it's a match
          match: nil,
          # Reason for the match
          reason: nil
        ); end
        sig { override.returns({criteria: String, match: T::Boolean, reason: String}) }
        def to_hash; end
      end
    end

    SearchRetrieveResponse =
      T.let(
        FindAI::Internal::Type::ArrayOf[FindAI::Models::SearchRetrieveResponseItem],
        FindAI::Internal::Type::Converter
      )
  end
end

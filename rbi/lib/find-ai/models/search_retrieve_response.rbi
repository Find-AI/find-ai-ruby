# typed: strong

module FindAI
  module Models
    class SearchRetrieveResponseItem < FindAI::BaseModel
      sig { returns(String) }
      def linkedin_url
      end

      sig { params(_: String).returns(String) }
      def linkedin_url=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Returned only for a person.
      sig { returns(T.nilable(String)) }
      def company
      end

      sig { params(_: String).returns(String) }
      def company=(_)
      end

      sig { returns(T.nilable(T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason])) }
      def criteria_and_reasons
      end

      sig do
        params(_: T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason])
          .returns(T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason])
      end
      def criteria_and_reasons=(_)
      end

      # Returned only for a company.
      sig { returns(T.nilable(String)) }
      def domain
      end

      sig { params(_: String).returns(String) }
      def domain=(_)
      end

      # The status of the search result.
      sig { returns(T.nilable(String)) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

      # Returned only for a person.
      sig { returns(T.nilable(String)) }
      def title
      end

      sig { params(_: String).returns(String) }
      def title=(_)
      end

      sig do
        params(
          linkedin_url: String,
          name: String,
          company: String,
          criteria_and_reasons: T::Array[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason],
          domain: String,
          status: String,
          title: String
        )
          .returns(T.attached_class)
      end
      def self.new(linkedin_url:, name:, company: nil, criteria_and_reasons: nil, domain: nil, status: nil, title: nil)
      end

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
      def to_hash
      end

      class CriteriaAndReason < FindAI::BaseModel
        # Match criteria
        sig { returns(T.nilable(String)) }
        def criteria
        end

        sig { params(_: String).returns(String) }
        def criteria=(_)
        end

        # Whether it's a match
        sig { returns(T.nilable(T::Boolean)) }
        def match
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def match=(_)
        end

        # Reason for the match
        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: String).returns(String) }
        def reason=(_)
        end

        sig { params(criteria: String, match: T::Boolean, reason: String).returns(T.attached_class) }
        def self.new(criteria: nil, match: nil, reason: nil)
        end

        sig { override.returns({criteria: String, match: T::Boolean, reason: String}) }
        def to_hash
        end
      end
    end

    SearchRetrieveResponse =
      T.let(FindAI::ArrayOf[FindAI::Models::SearchRetrieveResponseItem], FindAI::Converter)
  end
end

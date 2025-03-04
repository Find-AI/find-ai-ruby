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

      sig { returns(T.nilable(String)) }
      def domain
      end

      sig { params(_: String).returns(String) }
      def domain=(_)
      end

      sig { returns(T.nilable(String)) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

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
          .void
      end
      def initialize(
        linkedin_url:,
        name:,
        company: nil,
        criteria_and_reasons: nil,
        domain: nil,
        status: nil,
        title: nil
      )
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
        sig { returns(T.nilable(String)) }
        def criteria
        end

        sig { params(_: String).returns(String) }
        def criteria=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def match
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def match=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: String).returns(String) }
        def reason=(_)
        end

        sig { params(criteria: String, match: T::Boolean, reason: String).void }
        def initialize(criteria: nil, match: nil, reason: nil)
        end

        sig { override.returns({criteria: String, match: T::Boolean, reason: String}) }
        def to_hash
        end
      end
    end

    SearchRetrieveResponse = T.type_alias { T::Array[FindAI::Models::SearchRetrieveResponseItem] }
  end
end

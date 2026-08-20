# frozen_string_literal: true

module FindAI
  module Models
    class SearchRetrieveResponseItem < FindAI::Internal::Type::BaseModel
      # @!attribute linkedin_url
      #
      #   @return [String]
      required :linkedin_url, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute company
      #   Returned only for a person.
      #
      #   @return [String, nil]
      optional :company, String

      # @!attribute criteria_and_reasons
      #
      #   @return [Array<FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason>, nil]
      optional :criteria_and_reasons,
               -> { FindAI::Internal::Type::ArrayOf[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason] }

      # @!attribute domain
      #   Returned only for a company.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute status
      #   The status of the search result.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute title
      #   Returned only for a person.
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(linkedin_url:, name:, company: nil, criteria_and_reasons: nil, domain: nil, status: nil, title: nil)
      #   @param linkedin_url [String]
      #
      #   @param name [String]
      #
      #   @param company [String] Returned only for a person.
      #
      #   @param criteria_and_reasons [Array<FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason>]
      #
      #   @param domain [String] Returned only for a company.
      #
      #   @param status [String] The status of the search result.
      #
      #   @param title [String] Returned only for a person.

      class CriteriaAndReason < FindAI::Internal::Type::BaseModel
        # @!attribute criteria
        #   Match criteria
        #
        #   @return [String, nil]
        optional :criteria, String

        # @!attribute match
        #   Whether it's a match
        #
        #   @return [Boolean, nil]
        optional :match, FindAI::Internal::Type::Boolean

        # @!attribute reason
        #   Reason for the match
        #
        #   @return [String, nil]
        optional :reason, String

        # @!method initialize(criteria: nil, match: nil, reason: nil)
        #   @param criteria [String] Match criteria
        #
        #   @param match [Boolean] Whether it's a match
        #
        #   @param reason [String] Reason for the match
      end
    end

    # @type [FindAI::Internal::Type::Converter]
    SearchRetrieveResponse =
      FindAI::Internal::Type::ArrayOf[-> { FindAI::Models::SearchRetrieveResponseItem }]
  end
end

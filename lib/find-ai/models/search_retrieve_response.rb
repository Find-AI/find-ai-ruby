# frozen_string_literal: true

module FindAI
  module Models
    class SearchRetrieveResponseItem < FindAI::BaseModel
      # @!attribute linkedin_url
      #
      #   @return [String]
      required :linkedin_url, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] company
      #   Returned only for a person.
      #
      #   @return [String, nil]
      optional :company, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company

      # @!attribute [r] criteria_and_reasons
      #
      #   @return [Array<FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason>, nil]
      optional :criteria_and_reasons,
               -> { FindAI::ArrayOf[FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason] }

      # @!parse
      #   # @return [Array<FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason>]
      #   attr_writer :criteria_and_reasons

      # @!attribute [r] domain
      #   Returned only for a company.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!parse
      #   # @return [String]
      #   attr_writer :domain

      # @!attribute [r] status
      #   The status of the search result.
      #
      #   @return [String, nil]
      optional :status, String

      # @!parse
      #   # @return [String]
      #   attr_writer :status

      # @!attribute [r] title
      #   Returned only for a person.
      #
      #   @return [String, nil]
      optional :title, String

      # @!parse
      #   # @return [String]
      #   attr_writer :title

      # @!parse
      #   # @param linkedin_url [String]
      #   # @param name [String]
      #   # @param company [String]
      #   # @param criteria_and_reasons [Array<FindAI::Models::SearchRetrieveResponseItem::CriteriaAndReason>]
      #   # @param domain [String]
      #   # @param status [String]
      #   # @param title [String]
      #   #
      #   def initialize(linkedin_url:, name:, company: nil, criteria_and_reasons: nil, domain: nil, status: nil, title: nil, **) = super

      # def initialize: (Hash | FindAI::BaseModel) -> void

      class CriteriaAndReason < FindAI::BaseModel
        # @!attribute [r] criteria
        #   Match criteria
        #
        #   @return [String, nil]
        optional :criteria, String

        # @!parse
        #   # @return [String]
        #   attr_writer :criteria

        # @!attribute [r] match
        #   Whether it's a match
        #
        #   @return [Boolean, nil]
        optional :match, FindAI::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :match

        # @!attribute [r] reason
        #   Reason for the match
        #
        #   @return [String, nil]
        optional :reason, String

        # @!parse
        #   # @return [String]
        #   attr_writer :reason

        # @!parse
        #   # @param criteria [String]
        #   # @param match [Boolean]
        #   # @param reason [String]
        #   #
        #   def initialize(criteria: nil, match: nil, reason: nil, **) = super

        # def initialize: (Hash | FindAI::BaseModel) -> void
      end
    end

    SearchRetrieveResponse = FindAI::ArrayOf[-> { FindAI::Models::SearchRetrieveResponseItem }]
  end
end

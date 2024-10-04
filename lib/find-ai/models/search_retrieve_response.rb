# frozen_string_literal: true

module FindAI
  module Models
    class SearchRetrieveResponse < BaseModel
      # @!attribute [rw] linkedin_url
      #   @return [String]
      required :linkedin_url, String

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] company
      #   Returned only for a person.
      #   @return [String]
      optional :company, String

      # @!attribute [rw] criteria_and_reasons
      #   @return [Array<FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::CriteriaAndReason>]
      optional :criteria_and_reasons,
               FindAI::ArrayOf.new(
                 lambda {
                   FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::CriteriaAndReason
                 }
               )

      # @!attribute [rw] domain
      #   Returned only for a company.
      #   @return [String]
      optional :domain, String

      # @!attribute [rw] title
      #   Returned only for a person.
      #   @return [String]
      optional :title, String

      class CriteriaAndReason < BaseModel
        # @!attribute [rw] criteria
        #   Match criteria
        #   @return [String]
        optional :criteria, String

        # @!attribute [rw] match
        #   Whether it's a match
        #   @return [Boolean]
        optional :match, FindAI::BooleanModel

        # @!attribute [rw] reason
        #   Reason for the match
        #   @return [String]
        optional :reason, String
      end
    end
  end
end

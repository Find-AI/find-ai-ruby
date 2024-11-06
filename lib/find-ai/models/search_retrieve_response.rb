# frozen_string_literal: true

module FindAI
  module Models
    class SearchRetrieveResponse < BaseModel
      # @!attribute [rw] linkedin_url
      #   @return [String]
      required :linkedin_url, String

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] company
      #   Returned only for a person.
      #   @return [String]
      optional :company, String

      # @!attribute [rw] criteria_and_reasons
      #   @return [Array<FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::CriteriaAndReason>]
      optional :criteria_and_reasons,
               FindAI::ArrayOf.new(
                 -> {
                   FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::CriteriaAndReason
                 }
               )

      # @!attribute [rw] domain
      #   Returned only for a company.
      #   @return [String]
      optional :domain, String

      # @!attribute [rw] status
      #   The status of the search result.
      #   @return [String]
      optional :status, String

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

        # @!parse
        #   # Create a new instance of CriteriaAndReason from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :criteria Match criteria
        #   #   @option data [Hash, nil] :match Whether it's a match
        #   #   @option data [String, nil] :reason Reason for the match
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of SearchRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :linkedin_url
      #   #   @option data [String] :name
      #   #   @option data [String, nil] :company Returned only for a person.
      #   #   @option data [Array<Object>, nil] :criteria_and_reasons
      #   #   @option data [String, nil] :domain Returned only for a company.
      #   #   @option data [String, nil] :status The status of the search result.
      #   #   @option data [String, nil] :title Returned only for a person.
      #   def initialize(data = {}) = super
    end
  end
end

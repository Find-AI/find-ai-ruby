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

      # @!attribute [rw] photo_url
      #   @return [String]
      required :photo_url, String

      # @!attribute [rw] reason
      #   @return [String]
      required :reason, String

      # @!attribute [rw] short_description
      #   @return [String]
      required :short_description, String

      # @!attribute [rw] slug
      #   @return [String]
      required :slug, String

      # @!attribute [rw] company
      #   @return [FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::Company]
      optional :company, -> { FindAI::Models::SearchRetrieveResponse::SearchRetrieveResponse::Company }

      # @!attribute [rw] company_size
      #   Returned only for a company.
      #   @return [String]
      optional :company_size, String

      # @!attribute [rw] inferred_email
      #   Returned only for a person.
      #   @return [String]
      optional :inferred_email, String

      # @!attribute [rw] locations
      #   Returned only for a company.
      #   @return [Array<String>]
      optional :locations, FindAI::ArrayOf.new(String)

      # @!attribute [rw] title
      #   Returned only for a person.
      #   @return [String]
      optional :title, String

      class Company < BaseModel
        # @!attribute [rw] name_
        #   Returned only for a person.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] slug
        #   Returned only for a person.
        #   @return [String]
        required :slug, String

        # @!attribute [rw] website
        #   Returned only for a person.
        #   @return [String]
        required :website, String
      end
    end
  end
end

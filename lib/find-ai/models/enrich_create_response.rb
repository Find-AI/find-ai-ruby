# frozen_string_literal: true

module FindAI
  module Models
    class EnrichCreateResponse < BaseModel
      # @!attribute [rw] facts
      #   A list of facts we have on record about the company.
      #   @return [Array<String>]
      required :facts, FindAI::ArrayOf.new(String)

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] short_description
      #   A summary of information about the company.
      #   @return [String]
      required :short_description, String

      # @!attribute [rw] website
      #   @return [String]
      required :website, String

      # @!attribute [rw] linkedin_url
      #   The URL to the company's LinkedIn profile if one exists.
      #   @return [String]
      optional :linkedin_url, String

      # @!attribute [rw] photo_url
      #   A URL to an image of the company's logo. Valid for 10 minutes.
      #   @return [String]
      optional :photo_url, String
    end
  end
end

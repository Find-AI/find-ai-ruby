# frozen_string_literal: true

module FindAI
  class Client < BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client options.
    attr_reader

    # @return [FindAI::Resources::CompanyEnrichment]
    attr_reader :company_enrichment

    # @return [FindAI::Resources::PeopleEnrichment]
    attr_reader :people_enrichment

    # @return [FindAI::Resources::Searches]
    attr_reader :searches

    # Creates and returns a new client for interacting with the API.
    def initialize(base_url: nil, max_retries: nil)
      base_url ||= "https://usefind.ai/found"

      max_retries ||= DEFAULT_MAX_RETRIES

      super

      @company_enrichment = FindAI::Resources::CompanyEnrichment.new(client: self)
      @people_enrichment = FindAI::Resources::PeopleEnrichment.new(client: self)
      @searches = FindAI::Resources::Searches.new(client: self)
    end

    # @!visibility private
    def make_status_error(message:, body:, response:)
      case response.code.to_i
      when 400
        FindAI::HTTP::BadRequestError.new(message: message, response: response, body: body)
      when 401
        FindAI::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      when 403
        FindAI::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      when 404
        FindAI::HTTP::NotFoundError.new(message: message, response: response, body: body)
      when 409
        FindAI::HTTP::ConflictError.new(message: message, response: response, body: body)
      when 422
        FindAI::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      when 429
        FindAI::HTTP::RateLimitError.new(message: message, response: response, body: body)
      when 500..599
        FindAI::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        FindAI::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end

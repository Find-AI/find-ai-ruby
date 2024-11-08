# frozen_string_literal: true

module FindAI
  class Client < FindAI::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client option
    # @return [String]
    attr_reader :api_key

    # @return [FindAI::Resources::Searches]
    attr_reader :searches

    # @!visibility private
    def auth_headers
      {"Authorization" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    # @param api_key [String, nil] Defaults to `ENV["FIND_AI_API_KEY"]`
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    def initialize(base_url: nil, api_key: nil, max_retries: DEFAULT_MAX_RETRIES, timeout: 60)
      base_url ||= "https://usefind.ai/found"

      @api_key = [api_key, ENV["FIND_AI_API_KEY"]].find { |v| !v.nil? }
      if @api_key.nil?
        raise ArgumentError, "api_key is required"
      end

      super(base_url: base_url, max_retries: max_retries, timeout: timeout)

      @searches = FindAI::Resources::Searches.new(client: self)
    end

    # @!visibility private
    private def make_status_error(message:, body:, response:)
      case response.code.to_i
      in 400
        FindAI::HTTP::BadRequestError.new(message: message, response: response, body: body)
      in 401
        FindAI::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      in 403
        FindAI::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      in 404
        FindAI::HTTP::NotFoundError.new(message: message, response: response, body: body)
      in 409
        FindAI::HTTP::ConflictError.new(message: message, response: response, body: body)
      in 422
        FindAI::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      in 429
        FindAI::HTTP::RateLimitError.new(message: message, response: response, body: body)
      in 500..599
        FindAI::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        FindAI::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end

# frozen_string_literal: true

module FindAI
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < FindAI::Error
  end

  class APIError < FindAI::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < FindAI::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < FindAI::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < FindAI::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    #
    # @return [FindAI::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        FindAI::BadRequestError.new(**kwargs)
      in 401
        FindAI::AuthenticationError.new(**kwargs)
      in 403
        FindAI::PermissionDeniedError.new(**kwargs)
      in 404
        FindAI::NotFoundError.new(**kwargs)
      in 409
        FindAI::ConflictError.new(**kwargs)
      in 422
        FindAI::UnprocessableEntityError.new(**kwargs)
      in 429
        FindAI::RateLimitError.new(**kwargs)
      in (500..)
        FindAI::InternalServerError.new(**kwargs)
      else
        FindAI::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < FindAI::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < FindAI::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < FindAI::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < FindAI::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < FindAI::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < FindAI::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < FindAI::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < FindAI::APIStatusError
    HTTP_STATUS = (500..)
  end
end

# frozen_string_literal: true

module FindAI
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{FindAI::Internal}::OMIT>" }
      end
        .freeze
  end
end

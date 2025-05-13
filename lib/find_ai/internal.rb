# frozen_string_literal: true

module FindAI
  module Internal
    extend FindAI::Internal::Util::SorbetRuntimeSupport

    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{FindAI::Internal}::OMIT>" }
      end
        .freeze

    define_sorbet_constant!(:AnyHash) do
      T.type_alias { T::Hash[Symbol, T.anything] }
    end
  end
end

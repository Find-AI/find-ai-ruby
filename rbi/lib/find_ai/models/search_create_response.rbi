# typed: strong

module FindAI
  module Models
    class SearchCreateResponse < FindAI::BaseModel
      sig { returns(FindAI::Models::SearchCreateResponse::Poll) }
      attr_reader :poll

      sig { params(poll: T.any(FindAI::Models::SearchCreateResponse::Poll, FindAI::Internal::Util::AnyHash)).void }
      attr_writer :poll

      sig do
        params(poll: T.any(FindAI::Models::SearchCreateResponse::Poll, FindAI::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(poll:)
      end

      sig { override.returns({poll: FindAI::Models::SearchCreateResponse::Poll}) }
      def to_hash
      end

      class Poll < FindAI::BaseModel
        sig { returns(String) }
        attr_accessor :token

        sig { returns(String) }
        attr_accessor :path

        sig { params(token: String, path: String).returns(T.attached_class) }
        def self.new(token:, path:)
        end

        sig { override.returns({token: String, path: String}) }
        def to_hash
        end
      end
    end
  end
end

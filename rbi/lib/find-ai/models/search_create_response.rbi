# typed: strong

module FindAI
  module Models
    class SearchCreateResponse < FindAI::BaseModel
      sig { returns(FindAI::Models::SearchCreateResponse::Poll) }
      def poll
      end

      sig { params(_: FindAI::Models::SearchCreateResponse::Poll).returns(FindAI::Models::SearchCreateResponse::Poll) }
      def poll=(_)
      end

      sig { params(poll: FindAI::Models::SearchCreateResponse::Poll).void }
      def initialize(poll:)
      end

      sig { override.returns({poll: FindAI::Models::SearchCreateResponse::Poll}) }
      def to_hash
      end

      class Poll < FindAI::BaseModel
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        sig { returns(String) }
        def path
        end

        sig { params(_: String).returns(String) }
        def path=(_)
        end

        sig { params(token: String, path: String).void }
        def initialize(token:, path:)
        end

        sig { override.returns({token: String, path: String}) }
        def to_hash
        end
      end
    end
  end
end

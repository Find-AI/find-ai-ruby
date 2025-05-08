# typed: strong

module FindAI
  module Models
    class SearchCreateResponse < FindAI::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, FindAI::Internal::AnyHash) }

      sig { returns(FindAI::Models::SearchCreateResponse::Poll) }
      attr_reader :poll

      sig do
        params(poll: FindAI::Models::SearchCreateResponse::Poll::OrHash).void
      end
      attr_writer :poll

      sig do
        params(
          poll: FindAI::Models::SearchCreateResponse::Poll::OrHash
        ).returns(T.attached_class)
      end
      def self.new(poll:)
      end

      sig do
        override.returns({ poll: FindAI::Models::SearchCreateResponse::Poll })
      end
      def to_hash
      end

      class Poll < FindAI::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, FindAI::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :token

        sig { returns(String) }
        attr_accessor :path

        sig { params(token: String, path: String).returns(T.attached_class) }
        def self.new(token:, path:)
        end

        sig { override.returns({ token: String, path: String }) }
        def to_hash
        end
      end
    end
  end
end

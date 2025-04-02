# frozen_string_literal: true

require_relative "../test_helper"

class FindAI::Test::Resources::SearchesTest < FindAI::Test::ResourceTest
  def test_create
    response = @find_ai.searches.create

    assert_pattern do
      response => FindAI::Models::SearchCreateResponse
    end

    assert_pattern do
      response => {
        poll: FindAI::Models::SearchCreateResponse::Poll
      }
    end
  end

  def test_retrieve
    response = @find_ai.searches.retrieve("id")

    assert_pattern do
      response => ^(FindAI::ArrayOf[FindAI::Models::SearchRetrieveResponseItem])
    end
  end
end

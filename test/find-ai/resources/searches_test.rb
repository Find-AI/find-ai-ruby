# frozen_string_literal: true

require_relative "../test_helper"

class FindAI::Test::Resources::SearchesTest < Test::Unit::TestCase
  def setup
    @find_ai = FindAI::Client.new(base_url: "http://localhost:4010")
  end

  def test_create
    response = @find_ai.searches.create
    assert_kind_of(FindAI::Models::SearchCreateResponse, response)
  end

  def test_retrieve
    response = @find_ai.searches.retrieve("id")
    assert_kind_of(Array, response)
  end
end

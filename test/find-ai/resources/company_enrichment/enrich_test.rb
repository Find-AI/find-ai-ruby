# frozen_string_literal: true

require_relative "../../test_helper"

class FindAI::Test::Resources::EnrichTest < Test::Unit::TestCase
  def setup
    @find_ai = FindAI::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create
    response = @find_ai.company_enrichment.enrich.create
    assert_kind_of(FindAI::Models::EnrichCreateResponse, response)
  end

  def test_retrieve
    response = @find_ai.company_enrichment.enrich.retrieve("token")
    assert_kind_of(FindAI::Models::EnrichRetrieveResponse, response)
  end
end

# frozen_string_literal: true

require_relative "../test_helper"

class FindAI::Test::Resources::PeopleEnrichmentTest < Minitest::Test
  parallelize_me!

  def setup
    @find_ai = FindAI::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end
end

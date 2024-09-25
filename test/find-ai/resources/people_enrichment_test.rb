# frozen_string_literal: true

require_relative "../test_helper"

class FindAI::Test::Resources::PeopleEnrichmentTest < Test::Unit::TestCase
  def setup
    @find_ai = FindAI::Client.new(base_url: "http://localhost:4010")
  end
end

# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "find_ai/version"
require_relative "find_ai/internal/util"
require_relative "find_ai/internal/type/converter"
require_relative "find_ai/internal/type/unknown"
require_relative "find_ai/internal/type/boolean"
require_relative "find_ai/internal/type/file_input"
require_relative "find_ai/internal/type/enum"
require_relative "find_ai/internal/type/union"
require_relative "find_ai/internal/type/array_of"
require_relative "find_ai/internal/type/hash_of"
require_relative "find_ai/internal/type/base_model"
require_relative "find_ai/internal/type/base_page"
require_relative "find_ai/internal/type/request_parameters"
require_relative "find_ai/internal"
require_relative "find_ai/request_options"
require_relative "find_ai/file_part"
require_relative "find_ai/errors"
require_relative "find_ai/internal/transport/base_client"
require_relative "find_ai/internal/transport/pooled_net_requester"
require_relative "find_ai/client"
require_relative "find_ai/models/search_create_params"
require_relative "find_ai/models/search_create_response"
require_relative "find_ai/models/search_retrieve_params"
require_relative "find_ai/models/search_retrieve_response"
require_relative "find_ai/models"
require_relative "find_ai/resources/searches"

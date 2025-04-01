# frozen_string_literal: true

# Standard libraries.
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$PROGRAM_NAME]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "find-ai" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "find-ai/version"
require_relative "find-ai/util"
require_relative "find-ai/type/converter"
require_relative "find-ai/type/unknown"
require_relative "find-ai/type/boolean_model"
require_relative "find-ai/type/enum"
require_relative "find-ai/type/union"
require_relative "find-ai/type/array_of"
require_relative "find-ai/type/hash_of"
require_relative "find-ai/type/base_model"
require_relative "find-ai/type/base_page"
require_relative "find-ai/type/request_parameters"
require_relative "find-ai/type"
require_relative "find-ai/request_options"
require_relative "find-ai/errors"
require_relative "find-ai/transport/base_client"
require_relative "find-ai/transport/pooled_net_requester"
require_relative "find-ai/client"
require_relative "find-ai/models/search_create_params"
require_relative "find-ai/models/search_create_response"
require_relative "find-ai/models/search_retrieve_params"
require_relative "find-ai/models/search_retrieve_response"
require_relative "find-ai/resources/searches"

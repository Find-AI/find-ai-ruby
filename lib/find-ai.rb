# frozen_string_literal: true

# Standard libraries.
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

# Gems.
require "connection_pool"

# Package files.
require_relative "find-ai/version"
require_relative "find-ai/util"
require_relative "find-ai/extern"
require_relative "find-ai/base_model"
require_relative "find-ai/base_page"
require_relative "find-ai/request_options"
require_relative "find-ai/errors"
require_relative "find-ai/base_client"
require_relative "find-ai/pooled_net_requester"
require_relative "find-ai/client"
require_relative "find-ai/models/search_create_params"
require_relative "find-ai/models/search_create_response"
require_relative "find-ai/models/search_retrieve_params"
require_relative "find-ai/models/search_retrieve_response"
require_relative "find-ai/resources/searches"

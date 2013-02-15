require 'octokit'
require 'octokit/enterprise/configuration'

module Octokit
  module Enterprise
    extend Configuration

    module_function

    def new(options = {})
      Octokit::Client.new(options)
    end
  end
end
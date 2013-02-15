require 'octokit'

module Octokit
  module Enterprise
    module_function

    CUSTOM_ENDPOINTS = [:api_endpoint, :web_endpoint, :status_api_endpoint]

    def hostname=(_hostname_)
      Octokit.configure do |c|
        CUSTOM_ENDPOINTS.each do |endpoint|
          c.send "#{endpoint}=", c.send(endpoint).sub('github.com', _hostname_)
        end
      end
    end
  end
end
require 'spec_helper'

describe Octokit::Enterprise do
  describe 'hostname=' do
    let(:base_hostname) { 'git.enterprise.example.com' }

    before do
      Octokit::Enterprise.hostname = base_hostname
    end

    Octokit::Enterprise::CUSTOM_ENDPOINTS.each do |endpoint|
      context endpoint do
        let(:expected_hostname) do
          case endpoint
          when :web_endpoint
            base_hostname
          else
            subdomain = endpoint.to_s.split('_').first
            [subdomain, base_hostname].join('.')
          end
        end

        subject do
          URI.parse(
            Octokit::Client.new.send(endpoint)
          )
        end

        its(:hostname) do
          should == expected_hostname
        end
      end
    end
  end
end
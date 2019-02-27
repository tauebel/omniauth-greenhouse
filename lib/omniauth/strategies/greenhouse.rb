module OmniAuth
  module Strategies
    class Greenhouse < OmniAuth::Strategies::OAuth2
      option :name, 'greenhouse'
      option :client_options, { :site => "https://api.greenhouse.io" }

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

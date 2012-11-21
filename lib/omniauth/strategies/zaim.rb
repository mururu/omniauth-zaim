# coding: utf-8
require 'omniauth/strategies/oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Zaim < OmniAuth::Strategies::OAuth

      option :name, 'zaim'
      option :client_options, {
        :site => 'https://api.zaim.net',
        :request_token_path => '/v1/auth/request',
        :access_token_path  => '/v1/auth/access',
        :authorize_url => 'https://www.zaim.net/users/auth'
      }

      uid { raw_info['id'] }

      info do
        {
          :name     => raw_info['login'],
          :input_count     => raw_info['input_count'].to_i,
          :day_count     => raw_info['day_count'].to_i,
          :repeat_count => raw_info['repeat_count'].to_i,
          :day     => raw_info['day'].to_i,
          :week     => raw_info['week'].to_i,
          :currency_code     => raw_info['currency_code']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('https://api.zaim.net/v1/user/verify_credentials.json').body)["user"]
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end

require "net/http"

module Slack
  class Client
    RequestFailed = Class.new(StandardError)
    InviteFailed = Class.new(StandardError)

    def initialize(subdomain:, token:)
      @subdomain = subdomain
      @token = token
    end

    def invite(email:, channels: [])
      body = send_api_request(
        to: '/api/users.admin.invite', 
        payload: {
          email:       email,
          channels:    channels.join(","),
          token:       @token,
          set_active:  "true",
          _attempts:   1
        }
      )
      if !(body["ok"] || %w(already_in_team already_invited sent_recently).include?(body["error"]))
        raise InviteFailed.new(body.to_s)
      end

      true
    end

    ###############
    private
    ###############
    def send_api_request(to:, payload:)
      res = Net::HTTP.start("#{@subdomain}.slack.com", 443, use_ssl: true) do |http|
        req = Net::HTTP::Post.new("#{to}?t=#{Time.now.to_i}")
        req.set_form_data payload

        http.request(req)
      end

      raise RequestFailed.new("HTTP status code: #{res.code}") unless res.is_a?(Net::HTTPSuccess)

      body = JSON.parse(res.body)

    end
  end
end

module AuthHelper
  def http_login
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(ENV['WS2_USER'], ENV['WS2_PASS'])
  end
end

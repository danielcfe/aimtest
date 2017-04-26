class AuthService

  def initialize
    @uri = ENV['WS1']
  end

  def login(email, image)
    @email = email
    @image = image
    connect
  end

  def connect
    begin
      res = RestClient.post(@uri, payload)
      (res.code == 200)
    rescue RestClient::ExceptionWithResponse
      false
    end
  end

  private
  def payload
    { email: @email, image: @image }
  end

end

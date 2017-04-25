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
    res = RestClient.post(@uri, payload)
    (res.code == 200)
  end

  private
  def payload
    { email: @email, image: @image }
  end

end

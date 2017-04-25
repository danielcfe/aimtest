class ImageRecognitionService

  def initialize
    @uri = ENV['WS2']
  end

  def match_user_image(email, image)
    @email = email
    @image = image
    connect
  end

  private
  def connect
    @resource = RestClient::Resource.new( uri_email(@email), ENV['WS2_USER'], ENV['WS2_PASS'] )
    resource.post(payload)
    (res.code == 200)
  end

  def uri_email(email)
    "#{@uri}#{email}"
  end

  def payload
    { email: @email, image: @image}
  end

end

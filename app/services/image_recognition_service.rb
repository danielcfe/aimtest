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
    begin
      resource = RestClient::Resource.new( uri_email(@email), ENV['WS2_USER'], ENV['WS2_PASS'] )
      res = resource.post(payload)
      (res.code == 200)
    rescue RestClient::NotFound
      false
    end
  end

  def uri_email(email)
    "#{@uri}#{email}"
  end

  def payload
    { email: @email, image: @image}
  end

end

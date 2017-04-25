class User < ActiveRecord::Base
  validates :email, :image, presence: true
  validates :email, email: true

  def base64_encoder_image
    @img_encode ||= Base64.decode64(image.read)
  end

end

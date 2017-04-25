class UserService
  include ActiveModel::Validations
  attr_accessor :email, :image

  validates :email, :image, presence: true
  validates :email, email: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      public_send("#{name}=", value)
    end
  end

  def base64_encoder_image
    @img_encode ||= Base64.decode64(image.read)
  end

end

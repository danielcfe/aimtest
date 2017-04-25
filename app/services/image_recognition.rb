class ImageRecognition

  def match_user_image(email, image)
    User.exists?(email: email, image: image)
  end

end

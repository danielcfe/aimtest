class ImageRecognition

  def match_user_image(email, image)
    user = User.find_by(email: email)
    (user.nil?)? false : user.image.eql?(image)
  end

end

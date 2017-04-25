class Rest::BiometricsController < ActionController::API

  def verify_user
    if ImageRecognition.new.match_user_image(biometrics_params[:email],biometrics_params[:image])
      render json: { message: 'OK' }, status: :ok
    else
      render json: { message: 'No Autorizado' }, status: :not_found
    end
  end

  def biometrics_params
    params.permit(:email, :image)
  end

end

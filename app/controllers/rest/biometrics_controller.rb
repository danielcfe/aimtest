class Rest::BiometricsController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: ENV['WS2_USER'], password: ENV['WS2_PASS']

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

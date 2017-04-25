class Rest::AuthsController < ActionController::API

  def login
    if ImageRecognitionService.new.match_user_image(user_params[:email], user_params[:image])
      render json: { message: 'OK' }, status: :ok
    else
      render json: { message: 'No Autorizado' }, status: :not_found
    end
  end

  private

  def user_params
    params.permit(:email, :image)
  end

end

class SessionsController < ApplicationController

  def show
    @user = UserService.new
  end

  def create
    @user = UserService.new(auths_params)
    if @user.valid? && AuthService.new.login(@user.email, @user.base64_encoder_image)
      UserMailer.success_login(auths_params[:email], user_agent).deliver_later!
      render :show, notice: 'success'
    else
      UserMailer.fail_login(auths_params[:email], user_agent).deliver_later!
      render :show, notice: 'fail'
    end
  end

  private
  def auths_params
    params.require(:user).permit(:email,:image)
  end

  def user_agent
    request.user_agent
  end
end

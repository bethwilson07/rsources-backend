class AuthController < ApplicationController

  def create # POST localhost3000/login
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     render json: {
      message: "correct username and password",
      user_info: @user,
      error: false,
      token: encode({user_id: @user.id})
      }, status: :accepted
   else
     render json: {
       message: "INCORRECT!",
       error: true
     }, status: :unauthorized
   end
 end

end

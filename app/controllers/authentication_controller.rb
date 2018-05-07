class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    puts "PARAMS PEOPLE"
    puts params.inspect
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

  def authentication_params
    params.permit(:email, :password)
  end
end
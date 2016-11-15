module Api
  # app/controllers/api/sessions_controller.rb
  class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user.try(:authenticate, params[:password])
        render json: { user_id: user.id, authentication_token: user.authentication_token }
      else
        head 401
      end
    end

    def sign_up
      email = params[:email]
      password = params[:password]
      if user = User.find_by(email: email)
        render status: 400, json: { error: 'A user with that email already exists' }
      else
        user = User.create(email: email, password: password, password_confirmation: password)
        user.save
        render json: { authentication_token: user.authentication_token, user_id: user.id}
      end
    end
  end
end

module Api
  # app/controllers/user_controller.rb
  class UsersController < ApplicationController
    skip_before_action :authorize_user
  end
end

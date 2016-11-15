# app/controller/application_controller.rb
class ApplicationController < JSONAPI::ResourceController
  def current_user
    token = request.headers['X-CSRF-Token']
    User.find_by(authentication_token: token)
  end

  def authorize_user
    head 401 unless current_user
  end
end

module Api
  # app/controllers/slider_pictures_controller.rb
  class SliderPicturesController < ApplicationController
    skip_before_action :authorize_user, only: [:show, :index]
  end
end

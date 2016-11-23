module Api
  # app/controllers/api/websites_controller.rb
  class WebsitesController < ApplicationController
    skip_before_action :authorize_user, only: [:show, :index]
  end
end

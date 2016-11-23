module Api
  # app/controllers/api/church_positions_controller.rb
  class ChurchPositionsController < ApplicationController
    skip_before_action :authorize_user, only: [:show, :index]
  end
end

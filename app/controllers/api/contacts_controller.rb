module Api
  # app/controllers/api/contacts_controller.rb
  class ContactsController < ApplicationController
    skip_before_action :authorize_user, only: [:show, :index]
  end
end

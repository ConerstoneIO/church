require 'acceptance_helper'

resource 'Users' do
  get '/api/users' do
    example 'Listing users' do
      do_request
      expect(status).to eq 200
    end
  end
end

require 'rails_helper'

RSpec.describe "Org API endpoints", type: :request do
  describe "GET /api/v1/org_data" do

    it 'returns an empty array of Orgs' do
      get "/api/v1/org_data.json"
      # get org_data_path
      # expect(response.status).to eq(200)
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)).to eq []
    end


  end
end

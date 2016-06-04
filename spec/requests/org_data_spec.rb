require 'rails_helper'

RSpec.describe "OrgData", type: :request do
  describe "GET /org_data" do
    it "works! (now write some real specs)" do
      get org_data_path
      expect(response).to have_http_status(200)
    end
  end
end

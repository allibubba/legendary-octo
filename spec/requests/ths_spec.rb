require 'rails_helper'

RSpec.describe "Ths", type: :request do
  describe "GET /ths" do
    it "works! (now write some real specs)" do
      get ths_path
      expect(response).to have_http_status(200)
    end
  end
end

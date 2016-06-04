require "rails_helper"

RSpec.describe SlsDataController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sls_data").to route_to("sls_data#index")
    end

    it "routes to #new" do
      expect(:get => "/sls_data/new").to route_to("sls_data#new")
    end

    it "routes to #show" do
      expect(:get => "/sls_data/1").to route_to("sls_data#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sls_data/1/edit").to route_to("sls_data#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sls_data").to route_to("sls_data#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sls_data/1").to route_to("sls_data#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sls_data/1").to route_to("sls_data#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sls_data/1").to route_to("sls_data#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe OrgDataController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/org_data").to route_to("org_data#index")
    end

    it "routes to #new" do
      expect(:get => "/org_data/new").to route_to("org_data#new")
    end

    it "routes to #show" do
      expect(:get => "/org_data/1").to route_to("org_data#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/org_data/1/edit").to route_to("org_data#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/org_data").to route_to("org_data#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/org_data/1").to route_to("org_data#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/org_data/1").to route_to("org_data#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/org_data/1").to route_to("org_data#destroy", :id => "1")
    end

  end
end

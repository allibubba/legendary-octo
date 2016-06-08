require "rails_helper"

RSpec.describe ThsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ths").to route_to("ths#index")
    end

    it "routes to #new" do
      expect(:get => "/ths/new").to route_to("ths#new")
    end

    it "routes to #show" do
      expect(:get => "/ths/1").to route_to("ths#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ths/1/edit").to route_to("ths#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ths").to route_to("ths#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ths/1").to route_to("ths#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ths/1").to route_to("ths#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ths/1").to route_to("ths#destroy", :id => "1")
    end

  end
end

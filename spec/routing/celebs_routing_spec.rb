require "rails_helper"

RSpec.describe CelebsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/celebs").to route_to("celebs#index")
    end


    it "routes to #show" do
      expect(:get => "/celebs/1").to route_to("celebs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/celebs").to route_to("celebs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/celebs/1").to route_to("celebs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/celebs/1").to route_to("celebs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/celebs/1").to route_to("celebs#destroy", :id => "1")
    end

  end
end

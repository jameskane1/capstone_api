require "rails_helper"

RSpec.describe NewsPapersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/news_papers").to route_to("news_papers#index")
    end


    it "routes to #show" do
      expect(:get => "/news_papers/1").to route_to("news_papers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/news_papers").to route_to("news_papers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/news_papers/1").to route_to("news_papers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/news_papers/1").to route_to("news_papers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/news_papers/1").to route_to("news_papers#destroy", :id => "1")
    end

  end
end

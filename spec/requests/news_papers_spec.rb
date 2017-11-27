require 'rails_helper'

RSpec.describe "NewsPapers", type: :request do
  describe "GET /news_papers" do
    it "works! (now write some real specs)" do
      get news_papers_path
      expect(response).to have_http_status(200)
    end
  end
end

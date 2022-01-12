require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/recipe/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/recipe/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/recipe/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/recipe/index"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe "Foods", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/food/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/food/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/food/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/food/index"
      expect(response).to have_http_status(:success)
    end
  end

end

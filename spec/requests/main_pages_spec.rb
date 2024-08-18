require 'rails_helper'

RSpec.describe "MainPages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/main_pages/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/main_pages/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /random" do
    it "returns http success" do
      get "/main_pages/random"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe "Schedules", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/schedule/index"
      expect(response).to have_http_status(:success)
    end
  end

end

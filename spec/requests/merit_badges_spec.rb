require 'rails_helper'

RSpec.describe "MeritBadges", type: :request do
  describe "GET /merit_badges" do
    it "works! (now write some real specs)" do
      get merit_badges_path
      expect(response).to have_http_status(200)
    end
  end
end

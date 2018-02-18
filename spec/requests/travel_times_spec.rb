require 'rails_helper'


RSpec.describe "Travel Times", :type => :request do

  describe "GET #index" do
    before do
      # url = "https://developer.citymapper.com"
      get '/index'
    end

    context "when user requests index page" do
      it "response with a http status of 200" do
        expect(response).to have_http_status(200)
      end
    end
  end
end

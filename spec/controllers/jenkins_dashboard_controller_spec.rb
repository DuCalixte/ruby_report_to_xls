require 'spec_helper'

describe JenkinsDashboardController do

  describe "GET 'build_summary'" do
    it "returns http success" do
      get 'build_summary'
      response.should be_success
    end
  end

  describe "GET 'build_dashboard'" do
    it "returns http success" do
      get 'build_dashboard'
      response.should be_success
    end
  end

end

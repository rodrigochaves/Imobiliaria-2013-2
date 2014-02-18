require "spec_helper"

describe ImovelsController do
  describe "routing" do

    it "routes to #index" do
      get("/imovels").should route_to("imovels#index")
    end

    it "routes to #new" do
      get("/imovels/new").should route_to("imovels#new")
    end

    it "routes to #show" do
      get("/imovels/1").should route_to("imovels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/imovels/1/edit").should route_to("imovels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/imovels").should route_to("imovels#create")
    end

    it "routes to #update" do
      put("/imovels/1").should route_to("imovels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/imovels/1").should route_to("imovels#destroy", :id => "1")
    end

  end
end

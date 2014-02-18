require "spec_helper"

describe DonosController do
  describe "routing" do

    it "routes to #index" do
      get("/donos").should route_to("donos#index")
    end

    it "routes to #new" do
      get("/donos/new").should route_to("donos#new")
    end

    it "routes to #show" do
      get("/donos/1").should route_to("donos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/donos/1/edit").should route_to("donos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/donos").should route_to("donos#create")
    end

    it "routes to #update" do
      put("/donos/1").should route_to("donos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/donos/1").should route_to("donos#destroy", :id => "1")
    end

  end
end

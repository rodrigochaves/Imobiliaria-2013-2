require "spec_helper"

describe AmbientesController do
  describe "routing" do

    it "routes to #index" do
      get("/ambientes").should route_to("ambientes#index")
    end

    it "routes to #new" do
      get("/ambientes/new").should route_to("ambientes#new")
    end

    it "routes to #show" do
      get("/ambientes/1").should route_to("ambientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ambientes/1/edit").should route_to("ambientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ambientes").should route_to("ambientes#create")
    end

    it "routes to #update" do
      put("/ambientes/1").should route_to("ambientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ambientes/1").should route_to("ambientes#destroy", :id => "1")
    end

  end
end

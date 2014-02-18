require "spec_helper"

describe InteressadosController do
  describe "routing" do

    it "routes to #index" do
      get("/interessados").should route_to("interessados#index")
    end

    it "routes to #new" do
      get("/interessados/new").should route_to("interessados#new")
    end

    it "routes to #show" do
      get("/interessados/1").should route_to("interessados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interessados/1/edit").should route_to("interessados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interessados").should route_to("interessados#create")
    end

    it "routes to #update" do
      put("/interessados/1").should route_to("interessados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interessados/1").should route_to("interessados#destroy", :id => "1")
    end

  end
end

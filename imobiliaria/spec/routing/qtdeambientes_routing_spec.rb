require "spec_helper"

describe QtdeambientesController do
  describe "routing" do

    it "routes to #index" do
      get("/qtdeambientes").should route_to("qtdeambientes#index")
    end

    it "routes to #new" do
      get("/qtdeambientes/new").should route_to("qtdeambientes#new")
    end

    it "routes to #show" do
      get("/qtdeambientes/1").should route_to("qtdeambientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qtdeambientes/1/edit").should route_to("qtdeambientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qtdeambientes").should route_to("qtdeambientes#create")
    end

    it "routes to #update" do
      put("/qtdeambientes/1").should route_to("qtdeambientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qtdeambientes/1").should route_to("qtdeambientes#destroy", :id => "1")
    end

  end
end

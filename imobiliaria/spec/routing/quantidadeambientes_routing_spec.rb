require "spec_helper"

describe QuantidadeambientesController do
  describe "routing" do

    it "routes to #index" do
      get("/quantidadeambientes").should route_to("quantidadeambientes#index")
    end

    it "routes to #new" do
      get("/quantidadeambientes/new").should route_to("quantidadeambientes#new")
    end

    it "routes to #show" do
      get("/quantidadeambientes/1").should route_to("quantidadeambientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quantidadeambientes/1/edit").should route_to("quantidadeambientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quantidadeambientes").should route_to("quantidadeambientes#create")
    end

    it "routes to #update" do
      put("/quantidadeambientes/1").should route_to("quantidadeambientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quantidadeambientes/1").should route_to("quantidadeambientes#destroy", :id => "1")
    end

  end
end

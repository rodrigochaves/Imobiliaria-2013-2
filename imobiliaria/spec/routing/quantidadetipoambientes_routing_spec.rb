require "spec_helper"

describe QuantidadetipoambientesController do
  describe "routing" do

    it "routes to #index" do
      get("/quantidadetipoambientes").should route_to("quantidadetipoambientes#index")
    end

    it "routes to #new" do
      get("/quantidadetipoambientes/new").should route_to("quantidadetipoambientes#new")
    end

    it "routes to #show" do
      get("/quantidadetipoambientes/1").should route_to("quantidadetipoambientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quantidadetipoambientes/1/edit").should route_to("quantidadetipoambientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quantidadetipoambientes").should route_to("quantidadetipoambientes#create")
    end

    it "routes to #update" do
      put("/quantidadetipoambientes/1").should route_to("quantidadetipoambientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quantidadetipoambientes/1").should route_to("quantidadetipoambientes#destroy", :id => "1")
    end

  end
end

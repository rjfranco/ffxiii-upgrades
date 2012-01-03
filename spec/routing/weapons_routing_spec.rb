require "spec_helper"

describe WeaponsController do
  describe "routing" do

    it "routes to #index" do
      get("/weapons").should route_to("weapons#index")
    end

    it "routes to #new" do
      get("/weapons/new").should route_to("weapons#new")
    end

    it "routes to #show" do
      get("/weapons/1").should route_to("weapons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weapons/1/edit").should route_to("weapons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weapons").should route_to("weapons#create")
    end

    it "routes to #update" do
      put("/weapons/1").should route_to("weapons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weapons/1").should route_to("weapons#destroy", :id => "1")
    end

  end
end

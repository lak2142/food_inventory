require "spec_helper"

describe FoodItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/food_items").should route_to("food_items#index")
    end

    it "routes to #new" do
      get("/food_items/new").should route_to("food_items#new")
    end

    it "routes to #show" do
      get("/food_items/1").should route_to("food_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/food_items/1/edit").should route_to("food_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/food_items").should route_to("food_items#create")
    end

    it "routes to #update" do
      put("/food_items/1").should route_to("food_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/food_items/1").should route_to("food_items#destroy", :id => "1")
    end

  end
end

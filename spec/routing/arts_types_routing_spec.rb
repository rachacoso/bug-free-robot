require "rails_helper"

RSpec.describe ArtsTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arts_types").to route_to("arts_types#index")
    end

    it "routes to #new" do
      expect(:get => "/arts_types/new").to route_to("arts_types#new")
    end

    it "routes to #show" do
      expect(:get => "/arts_types/1").to route_to("arts_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/arts_types/1/edit").to route_to("arts_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/arts_types").to route_to("arts_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arts_types/1").to route_to("arts_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arts_types/1").to route_to("arts_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arts_types/1").to route_to("arts_types#destroy", :id => "1")
    end

  end
end

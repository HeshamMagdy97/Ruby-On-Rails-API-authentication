require "rails_helper"

RSpec.describe TodosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/users/1/todos").to route_to("todos#index", user_id: '1')
    end

    it "routes to #show" do
      expect(:get => "/users/1/todos/1").to route_to("todos#show", user_id: '1', id: '1')
    end


    it "routes to #create" do
      expect(:post => "/users/1/todos").to route_to('todos#create', user_id: '1')
    end

    it "routes to #update via PUT" do
      expect(:put => "/users/1/todos/1").to route_to("todos#update",user_id: '1', id: '1')
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users/1/todos/1").to route_to("todos#update",user_id: '1', id: '1')
    end

    it "routes to #destroy" do
      expect(:delete => "/users/1/todos/1").to route_to("todos#destroy",user_id: '1', id: '1')
    end
  end
end

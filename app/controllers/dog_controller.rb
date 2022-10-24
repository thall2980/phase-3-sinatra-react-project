class DogController < ApplicationController
    set :default_content_type, 'application/json'

    get "/dogs" do
        dogs = Dog.all 
        dogs.to_json
    end

    delete "/dogs/:id" do
        dog = Dog.find(params[:id])
        dog.destroy
    end

    post "/dogs" do
        new_dog = Dog.create(
            name: params[:name],
            owner: params[:owner],
            breed: params[:breed],
            temperament: params[:temperament],
            age: params[:age]
        )
        new_dog.to_json
    end
    
    patch "/dogs/:id" do
        dog = Dog.find(params[:id])
        dog.update(params)
        dog.to_json
    end
end
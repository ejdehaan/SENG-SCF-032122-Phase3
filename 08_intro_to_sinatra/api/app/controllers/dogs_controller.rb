class DogsController < ApplicationController
  
  get "/dogs" do 
    Dog.all.to_json(:methods => :age)
  end

  post "/dogs" do
    Dog.create(dog_params).to_json(:methods => :age)
  end

  delete "dogs/:id" do
    found_dog = Dog.find(params[:id])
    found_dog.destroy
    status 204
  end

  patch "/dogs/:id" do
    found_dog = Dog.find(params[:id])
    found_dog.update(dog_params)
    found_dog.to_json(:methods => :age)     
  end


  private 

  # a method used to specify which keys are allowed through params into the controller
  # we use this method to create a list of what's permitted to be passed to .create or .update
  # within controller actions.
  def dog_params
    allowed_params = ["name", "birthdate", "breed", "image_url"]
    params.filter do |key|
      allowed_params.include?(key)
    end
  end

end
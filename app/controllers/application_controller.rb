class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/walkers" do
    walkers = Walker.all
    walkers.to_json
  end

  get "/walkers/:id" do
    walker = Walker.find(params[:id])
    walker.to_json
  end

  post "/walkers" do
    new_walker = Walker.create(
      name: params[:name],
      years_of_experience: params[:years_of_experience],
      pace: params[:pace]
    )
    new_walker.to_json
  end

  patch "/walkers/:id" do
    walker = Walker.find(params[:id])
    walker.update(
      name: params[:name],
      years_of_experience: params[:years_of_experience],
      pace: params[:pace]
    )
    walker.to_json
  end

  delete "/walkers/:id" do
    walker = Walker.find(params[:id])
    walker.destroy
    walker.to_json
  end

end

class IngredientsController < ApplicationController
  def index
    response = HTTP.headers("X-Api-Key" => "Rails.application.credentials.third-party-api").get("https://api.spoonacular.com/recipes/complexSearch?q=#{params[:search]}")
      render json: response.parse(:json)["ingredients"]
    
  end
end

Rails.application.routes.draw do
  get "/ingredients", controller: "ingredients", action: "index"
end

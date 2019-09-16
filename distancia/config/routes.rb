Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :distancias
      get "distancias.json/buscar" => "distancias#buscar"
    end
  end
end
Rails.application.routes.draw do
  resources :costs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  match 'costs?origem&destino&weight' => 'costs#index', via: 'get'
end


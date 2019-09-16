Rails.application.routes.draw do
  get 'ponto_distribuicao/index'
  get 'ponto_distribuicao/show'
  get 'ponto_distribuicao/new' => "ponto_distribuicao#new"
  get 'ponto_distribuicao/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

LolBook::Application.routes.draw do

  devise_for :users

  resources :champions
  resources :items
  root :to => 'champions#index'
end

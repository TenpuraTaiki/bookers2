Rails.application.routes.draw do

  resources :hons, only: [:index, :create, :edit, :show, :update, :destroy]

  get 'about' => 'hons#about', as: 'about'
  get 'yuzas' => 'hons#yuzas', as: 'yuzas'
  get 'kansougun' => 'hons#kansougun', as: 'kansougun'

  root 'hons#top'
  
  devise_for :yuzas
  resources :yuzas, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

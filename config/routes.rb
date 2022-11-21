Rails.application.routes.draw do
  devise_for :hosts
  devise_for :gests
 root to: 'gests#top'
 get '/gests/top' => 'gests#top', as: :wedding
 get '/gests/sbout' => 'gests#about' ,as: :about

 resources :gests
 resources :hosts, only: [:index, :update, :create, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

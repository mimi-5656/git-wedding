Rails.application.routes.draw do
  devise_for :hosts
  devise_for :gests
 root to: 'gests#top'
 get '/gests/top' => 'gests#top', as: :wedding
 get '/gests/about' => 'gests#about' ,as: :about

  # gest用
 devise_for :gests, skip: [:passwords], controllers: {
   registrations: "gest/registrations",
   sessions: 'gest/sessions'
 }

  # ホスト用
 devise_for :host, skip: [:registrations, :passwords], controllers: {
   sessions: "host/sessions"
 }

 resources :gests, only: [:index, :update, :create, :show, :create] do
    collection do
      post :confirm
    end
  end
 resources :hosts, only: [:index, :update, :create, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

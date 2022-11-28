Rails.application.routes.draw do

 root to: 'gests#top'
 get '/gests/top' => 'gests#top', as: :wedding
 get '/gests/about' => 'gests#about' ,as: :about

  # gest用
 devise_for :gests, skip: [:passwords], controllers: {
   registrations: "gests/registrations",
   sessions: 'gests/sessions'
 }

  # ホスト用
 devise_for :host, skip: [:registrations, :passwords], controllers: {
   sessions: "host/sessions"
 }

 resources :gests, only: [:index, :update, :create, :show, :create, :edit]
 resources :hosts, only: [:index, :update, :create, :show, :create, :destroy, :edit]

 post 'gest/confirm' # 確認画面
 post 'gest/back' # 確認画面から「入力画面に戻る」をクリックしたとき
 post 'gest/complete' # 完了画面

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

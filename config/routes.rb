Rails.application.routes.draw do
  get 'gests/top'  => 'gests#top'
  get 'gests/new'
  get 'gests/create'
  get 'gests/index'
  get 'gests/show'
  get 'gests/edit'
  get 'gests/update'
  get 'gests/destroy'
  get 'hosts/new'
  get 'hosts/create'
  get 'hosts/index'
  get 'hosts/show'
  get 'hosts/edit'
  get 'hosts/update'
  get 'hosts/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

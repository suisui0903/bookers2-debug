Rails.application.routes.draw do
   get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

root :to => "homes#top"
  get '' => 'homes#top'


end
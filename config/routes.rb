Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about"=>"homes#about",as:"about"
  resources :books,only:[:index,:edit,:show,:new,:create,:destroy,:update]
  resources :users,only:[:index,:new,:edit,:show,:create,:destroy,:update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

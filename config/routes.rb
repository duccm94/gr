Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  mount Ckeditor::Engine => "/ckeditor"
  ActiveAdmin.routes(self)
  devise_for :users
  root "static_pages#home"
  get "help" => "static_pages#help"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"

  resources :users, only: [:edit, :update, :show]
  resources :feedbacks
  resources :conversations, only: [:index, :create] do
    member do
      post :close
    end
  end
end

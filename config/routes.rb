Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  ActiveAdmin.routes(self)
  devise_for :users
  root "static_pages#home"
  get "help" => "static_pages#help"
  get "about" => "static_pages/about"
  get "contact" => "static_pages/contact"
end

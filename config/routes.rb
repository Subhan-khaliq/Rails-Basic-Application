# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :blogs
  end

  # resources :blogs
  resources :student_informations
  get '/friend/add_friend', to: 'admin/blogs#add_friend'

  root 'student_informations#index'
end

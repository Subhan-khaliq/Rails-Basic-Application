# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :blogs
  end

  # resources :blogs
  resources :student_informations

  root 'student_informations#index'

end

# -*- encoding : utf-8 -*-
Checklist::Application.routes.draw do
  resources :lists do
    member do
      post 'clone'
    end
  end
  resources :records, only: [] do
    member do
      post 'check'
    end
  end

  root to: 'lists#index'
end

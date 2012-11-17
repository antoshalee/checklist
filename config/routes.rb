Checklist::Application.routes.draw do
  resources :lists
  resources :records, only: [] do
    member do
      post 'check'
    end
  end

  root to: 'lists#index'
end

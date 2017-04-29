Rails.application.routes.draw do
  resources :wikis
  get 'tag/:id',
    to: 'wikis#tag',
    as: 'tag',
    format: false,
    defaults: { format: 'html' },
    constraints: { id: %r{[^\/]+} }

  devise_for :admins
  devise_scope :admin do
    get 'admin', :to => 'devise/sessions#new'
  end

  root 'wikis#index'
end

Rails.application.routes.draw do
  
  root to: "users#dashboard"
  
  devise_for :users

  get 'styleguide', to: "users#styleguide"
  get 'dashboard',  to: "users#dashboard"
  resources :clubs do
    resources :events
    get 'events/:id/donate', to: "events#landing"
  end

  # resources :gyms, :except => ['new'] do
  #   resources :workouts, :except => ['index'] do
  #     delete 'movements/:id', to: "workouts#destroy_movement"
  #     resources :scores do
  #       resources :comments, :except => ['index', 'show', 'edit', 'new']
  #       get 'share'
  #     end
  # config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end

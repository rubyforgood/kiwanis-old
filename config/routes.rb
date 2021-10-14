Rails.application.routes.draw do
  
  root to: "users#dashboard"
  
  devise_for :users

  get 'styleguide',   to: "users#styleguide"
  get 'dashboard',    to: "users#dashboard"


  get 'clubs',        to: "clubs#index"

  # config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end

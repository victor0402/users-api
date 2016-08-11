Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      match 'users/:id', to: 'users#destroy', via: [:options], as: :destroy_user_via_options
    end
  end
end

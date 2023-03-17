Rails.application.routes.draw do
  get '/health_check', to: "health_check#index"
  get '/sentry_test', to: "sentry_test#index"

  namespace :api do
    namespace :v1 do
      scope :users do
        resource :me, controller: 'me', only: %i[show]
      end
      resources :canvases, only: %i[index show create update destroy] do
        post ':canvas_id/labels', to: 'labels#create', on: :collection
        patch ':canvas_id/labels', to: 'labels#update', on: :collection
        delete ':canvas_id/labels', to: 'labels#destroy', on: :collection
      end
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
          registrations: 'api/v1/auth/registrations'
      }
    end
  end
end

Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # API
  namespace :api, defaults: {format: :json} do
    devise_for :users, skip: [:registrations]

    namespace :v1 do
      post "/sign_in", to: "sessions#login" #api.lvh.me:3000/v1/sign_in
      resource :sign_up, only: [:create], controller: :registrations #api.lvh.me:3000/v1/sign_up

      scope :users do #api.lvh.me:3000/v1/users
        post "/", to: "users#update"
        post "/password", to: "users#update_password"
      end

    get '/opportunities/:tag', to: 'opportunities#tagged'
    get '/matches', to: 'opportunities#matches'
    resources :categories, only: [:index, :show]
    resources :organizations, only: [:index, :show]
    resources :opportunities, only: [:index, :show]
    get '/organizations/:id/opportunities', to: 'organizations#show_opps'
    get '/categories/:id/organizations', to: 'categories#show_orgs'

    end


    get "*any", to: "pages#not_found"
  end

  root "pages#not_found"

  get "*any", to: "pages#not_found"

end

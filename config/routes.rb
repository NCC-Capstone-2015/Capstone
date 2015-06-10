Rails.application.routes.draw do

  devise_for :logins
  resources :basic_searches do
    collection do
      match 'search' => 'basic_searches#index', via: [:post], as: :search
    end
  end
  resources :disclaimers do
    collection do
      match 'privacy_policy' => 'disclaimers#privacy_policy', via: [:get]
      match 'contact_us' => 'disclaimers#contact_us', via: [:get]
    end
  end
  #paths to custom methods in giving_back controller, Matthew Kachlik
  #this allows for the link to send the id in and used in a method
  get '/giving_back/:id/completed' => 'giving_backs#completed', :as => :completed_giving_backs
  get '/giving_back/:id/approve' => 'giving_backs#approve', :as => :approve_giving_backs
  resources :giving_backs
  resources :logins
  resources :homepages
  resources :account_logins
  resources :user_surveys
  resources :admin_surveys
  resources :report_displays
  resources :report_options
  resources :reports
  resources :users
  resources :user_phones
  resources :searches do
    collection do
      match 'search' => 'searches#index', via: [:post], as: :search
    end
  end
  resources :welcomes
  resources :user_informations
  get 'welcomes/index'

  post 'reports/options' => 'reports#options'
  post 'reports/display' => 'reports#display'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  # Root modified by Ryan and Andrew
  root 'homepages#index'


  post 'admin_surveys/question_type' => 'admin_surveys#question_type'
  post 'admin_surveys/options' => 'admin_surveys#options'

  #  post 'user_informations/:id' => 'user_informations#show'
  post 'user_informations/:id' => 'user_informations#update'
  post 'user_informations/:id/edit' => 'user_informations#edit'
  post 'users/:id' => 'users#edit'
  post '/users/:id/edit(.:format)' => 'users#edit'

  mount Rapidfire::Engine => "/rapidfire"
  #get 'rapidfire/user_informations' => '/user_informations#show'
  get 'saved_lists' => 'saved_lists#index'
  get 'saved_lists/index' => 'saved_lists#index'
  post 'saved_lists/create' => 'saved_lists#create'
  get '/saved_lists/:id', to: 'saved_lists#show', as: 'saved_list'
  post '/saved_lists/:id', to: 'saved_lists#show'
  delete '/saved_lists/:id', to: 'saved_lists#destroy'
  post '/saved_lists/delete_user/:id', to: "saved_lists#delete_user"
end

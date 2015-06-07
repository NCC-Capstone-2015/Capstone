Rails.application.routes.draw do
  resources :giving_backs
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
  resources :saved_lists
  get 'welcomes/index'

  post 'reports/options' => 'reports#options'
  post 'reports/display' => 'reports#display'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'homepages#index'

  post 'admin_surveys/question_type' => 'admin_surveys#question_type'
  post 'admin_surveys/options' => 'admin_surveys#options'

  post 'user_informations/:id' => 'user_informations#update'
  post 'users/:id' => 'users#edit'
  post '/users/:id/edit(.:format)' => 'users#edit'

  mount Rapidfire::Engine => "/rapidfire"
  #get 'rapidfire/user_informations' => '/user_informations#show'
end
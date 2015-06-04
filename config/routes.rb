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
  get 'welcomes/index'

  post 'reports/options' => 'reports#options'
  post 'reports/display' => 'reports#display'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'homepages#index'

  post 'admin_surveys/question_type' => 'admin_surveys#question_type'
  post 'admin_surveys/options' => 'admin_surveys#options'
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

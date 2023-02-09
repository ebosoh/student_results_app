Rails.application.routes.draw do

  

  devise_for :user, path_names: { sign_in: 'login', sign_out: 'logout'}
	root 'rails_admin/main#dashboard'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

   resources :fee_payments
 resources :transport_payments # Solved show_in_app_error
 
 
   resources :msc_leather_technology_marks
   resources :actuarial_science_first_years
   resources :actuarial_science2_first_years
    resources :actuarial_science_second_years
    resources :actuarial_science2_second_years
    resources :actuarial_science_third_years
    resources :actuarial_science_fourth_years
    
    resources :industrial_chemistry_first_years
    resources :industrial_chemistry_second_years
    resources :industrial_chemistry_third_years
    resources :industrial_chemistry_fourth_years
   
	
	resources :leather_technology_first_years
	resources :leather_technology_second_years
	resources :leather_technology_third_years
	resources :leather_technology_fourth_years
	
	resources :mathematics_first_years
	resources :mathematics_second_years
	resources :mathematics_third_years
	resources :mathematics_fourth_years
	
	resources :polymer_chemistry_first_years
	resources :polymer_chemistry_second_years
	resources :polymer_chemistry_third_years
	resources :polymer_chemistry_fourth_years
	
	resources :msc_leather_technology_marks

  resources :leather_stage_ones
  resources :leather_stage_twos
  resources :leather_stage_threes





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

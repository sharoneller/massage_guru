Rails.application.routes.draw do

  get 'recommendations/show_recommendation'
  get 'recommendations/show_all_recommendations'

  resources :symptoms

  root "recommendations#index"
  resources :recommendations do
  	resources :symptoms
  end
 
end

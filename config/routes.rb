Rails.application.routes.draw do

  get 'recommendations/show_recommendation'

  resources :symptoms

  root "recommendations#index"
  resources :recommendations do
  	resources :symptoms
  end
 
end

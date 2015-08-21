Rails.application.routes.draw do

  resources :symptoms

  root "recommendations#index"
  resources :recommendations do
  	resources :symptoms
  end
  match '/recommendation', to: "recommendations#get_recommendation", :as => :get_recommendation, :via => [:post, :get]
end

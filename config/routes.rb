Rails.application.routes.draw do
  get 'upload', to: "images#upload"
  post 'upload', to: "image#upload"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
end

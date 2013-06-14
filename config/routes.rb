THoR::Application.routes.draw do
  resources :tasks


  root :to => 'task#index'
end

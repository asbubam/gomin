Gomin::Application.routes.draw do

	resources :problems

  root :to => 'main#index'
end

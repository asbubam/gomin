Gomin::Application.routes.draw do

	resources :problems do
		member do
			post 'like'
			post 'dislike'
		end
	end

  root :to => 'main#index'
end

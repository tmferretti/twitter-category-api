Rails.application.routes.draw do
	namespace :v1 do
		get '/categories' => 'categories#index'
	end
end

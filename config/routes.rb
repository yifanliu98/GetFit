Rails.application.routes.draw do

	resources :todo_lists do
		resources :todo_items do
			member do
				patch :complete
			end
		end
     end

	root "users#index"
	get "/users" => "users#index"
	get "/home" => "home#index"
	get "/signups" => "signups#index"
	post "/signups" => "signups#create"
	post"/users" =>"users#login"
	get "/logout" => "users#logout"
	get "/stopwatch" => "home#stopwatch"
	get "/entercalories" => "home#enter_calories"
	get "/analyzeweightchange" => "weightchange#analyze_weight_change"
	get "/analyzeweightchange/weightchangeresults" => "weightchange#weight_change_results"
	get "/nearbygyms" => "nearbygyms#index"
	get "/todo_lists" => "todo_lists#index"	
	post "/todo_lists" => "todo_lists#create"	
 	get "todo_list_todo_items" => "todo_items#index"
 	post "todo_list_todo_items" => "todo_items#create"
 	get "/nutritional_value" => "nutritional_value#index"

end


Rails.application.routes.draw do
<<<<<<< HEAD
	
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
 post "/todo_lists" => "todo_lists#create"	
 get "todo_list_todo_items" => "todo_items#index"
 post "todo_list_todo_items" => "todo_items#create"




end
=======
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

end
>>>>>>> fa52d1c993abdfced59076e0ce7bee47d6e5d824

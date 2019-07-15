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
 post "/todo_lists" => "todo_lists#create"	
 get "todo_list_todo_items" => "todo_items#index"
 post "todo_list_todo_items" => "todo_items#create"




end
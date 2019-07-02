Rails.application.routes.draw do
	root "users#index"
	get "/users" => "users#index"
	get "/home" => "home#index"
	get "/signups" => "signups#index"
	post "/signups" => "signups#create"
	post"/users" =>"users#login"
	get "/logout" => "users#logout"
	get "/stopwatch" => "home#stopwatch"

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  constraints(Constraints::UsernameRouteConstrainer.new) do
    resources :users, path: ""
  end
end

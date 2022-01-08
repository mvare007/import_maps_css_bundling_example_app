Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/coin_gecko_api/coins', to: 'coin_gecko_api#coins'
  get '/coin_gecko_api/exchanges', to: 'coin_gecko_api#exchanges'
end

Rails.application.routes.draw do

  resources :orders, only: [:show, :index], param: :order_id

end

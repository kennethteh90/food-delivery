Rails.application.routes.draw do

  resources :orders, only: [:show, :index], param: :order_id do
    resources :feedbacks, only: [:create, :index]
  end

end

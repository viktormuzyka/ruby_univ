Rails.application.routes.draw do
  root "machine#index"

  get "/machines", to: "machine#index"
  get "/total_standby", to: "machine#total_standby"
  get "/total_time", to: "machine#total_time"
  get "/without_standby", to: "machine#without_standby"
  get "/relative_standby_total", to: "machine#relative_standby_total"
  get "/sum_relative_standby_total", to: "machine#sum_relative_standby_total"
  post "machines", to:"machine#create"



  resources :machine
  #resources :blog_posts
end

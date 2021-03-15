Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end

  devise_for :users
  root to: 'pages#home'
end

postgres://yljijpdatgvnly:9b96e86a06bb9a4985a14a2ff76876811c8730aa43cd9ef862fdb317348a9848@ec2-174-129-195-73.compute-1.amazonaws.com:5432/ddr5i0l4lep60o
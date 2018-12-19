Rails.application.routes.draw do
  devise_for :users
  mount Homeland::Engine => "/"
  #root to: 'welcome#index'
	root to: 'topics#index'
end

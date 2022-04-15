Rails.application.routes.draw do

  root to: 'staff/homes#start'

  namespace :admin do
    get 'graphs/:id' => "members#graph"
    get 'search' => 'search'
    resources :members, only: [:index, :show, :edit, :update]
  end
  scope module: :staff do
    get 'graphs' => 'conditions#graph'
    resources :conditions, only: [:new, :create ,:show, :destroy, :index]

  end
  devise_for :members, skip: [:passwards], controllers: {
    registrations: "staff/registrations",
    sessions: 'staff/sessions'
  }

  devise_for :admins, skip: [:passwards, :registrations], controllers: {
    sessions: "admin/sessions"
  }


  scope module: :staff do
    get 'my_page' => 'members#top'
    patch 'change' => 'members#change'
    get "search" => "search"
    resources :members, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    get 'top' => 'homes#top'
  end

  namespace :admin do
    resources :sections, only: [:index, :create, :edit, :update]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

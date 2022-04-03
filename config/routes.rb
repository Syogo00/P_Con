Rails.application.routes.draw do


  devise_for :members, skip: [:passwards], controllers: {
    registrations: "staff/registrations",
    sessions: 'staff/sessions'
  }

  devise_for :admins, skip: [:passwards, :registrations], controllers: {
    sessions: "admin/sessions"
  }


  scope module: :staff do
    get 'my_page' => 'members#top'
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

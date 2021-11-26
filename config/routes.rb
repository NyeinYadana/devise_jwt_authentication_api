Rails.application.routes.draw do
  #user
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  #company
  get '/current_company', to: 'current_company#index'
  devise_for :companies, path: '', path_names: {
    sign_in: 'company_login',
    sign_out: 'company_logout',
    registration: 'company_signup'
  },
  controllers: {
    sessions: 'companies/sessions',
    registrations: 'companies/registrations'
  }
end

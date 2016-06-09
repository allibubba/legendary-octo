Rails.application.routes.draw do
  resources :ths
  resources :sls_data
  resources :org_data
  mount API => '/'
  mount GrapeSwaggerRails::Engine => '/api_docs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

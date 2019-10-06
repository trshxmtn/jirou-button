Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'buttons#share'

  get '/buttons/first', to: 'buttons#first'
  get '/buttons/second', to: 'buttons#second'
  get '/buttons/third', to: 'buttons#third'
  get '/buttons/fourth', to: 'buttons#fourth'
end

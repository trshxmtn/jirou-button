Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'buttons#share'

  get '/buttons/button1', to: 'buttons#button1'
  get '/buttons/button2', to: 'buttons#button2'
  get '/buttons/button3', to: 'buttons#button3'
  get '/buttons/button4', to: 'buttons#button4'
end

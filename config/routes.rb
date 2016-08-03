Rails.application.routes.draw do
    get 'offers', to: 'offers#display'

  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

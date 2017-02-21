Rails.application.routes.draw do
  get 'properties/index'

  get 'properties/show'

  get 'properties/search'

  get 'properties/property_search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

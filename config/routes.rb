Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    Api.resources.each do |r|
      resources r
    end
  end
  root "pages#index"
end

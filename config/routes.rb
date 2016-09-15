Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    $api_resources.each do |r|
      resources r
    end
  end
end

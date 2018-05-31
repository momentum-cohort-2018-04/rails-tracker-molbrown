Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :insects, format: "json" do
        resources :notes, format: "json"
      end
    end
  end
end


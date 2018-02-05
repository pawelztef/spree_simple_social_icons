Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :social_links
  end
end

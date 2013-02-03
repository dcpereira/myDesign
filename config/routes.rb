MyDesign::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  get "gallery" => "home#gallery"
  get "about_us" => "home#about_us"
  get "contact_us" => "home#contact_us"
  get "prices" => "home#prices"
end

Targetron::Application.routes.draw do
  
  namespace :admin do
    resources :persona, :descriptor, :action, :audience, :demographic, :influencer, :media, :spirit_animal, :hobby, :must_have, :nick_cage_film, :wisdom
  end
  
  root :to => 'test#index'

end

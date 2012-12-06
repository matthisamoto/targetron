class TestController < ApplicationController

  def index
    
    @persona    =   params.has_key?(:p) ? Persona.find(params[:p])    :  Persona.random
    @descriptor =   params.has_key?(:d) ? Descriptor.find(params[:d]) :  Descriptor.random
    @action     =   params.has_key?(:a) ? Action.find(params[:a])     :  Action.random
    
    # Other Characteristics
    
    @audience       =  Audience.random
    @demographics   =  Demographic.pick_two
    @influencers    =  Influencer.pick_two
    @media          =  Media.pick_two
    @spirit_animal  =  SpiritAnimal.random
    @hobby          =  Hobby.random
    @must_have      =  MustHave.random
    @nick_cage_film =  NickCageFilm.random
    @wisdom         =  Wisdom.random
    
    @meta = "Dyslexic dolphin trainers or self-centered cartographers?"
    if params.has_key?(:p)
      @meta =  "My target audience: "
      @meta << @descriptor.copy
      @meta << " "
      @meta << @persona.copy
    end
    
    
  end
  
end

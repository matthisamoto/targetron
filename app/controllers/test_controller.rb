class TestController < ApplicationController

  def index
    @persona =        Persona.random
    @descriptor =     Descriptor.random
    @action =         Action.random
    @audience =       Audience.random
    @demographics =   Demographic.pick_two
    @influencers =    Influencer.pick_two
    @media =          Media.pick_two
    @spirit_animal =  SpiritAnimal.random
    @hobby =          Hobby.random
    @must_have =      MustHave.random
    @nick_cage_film = NickCageFilm.random
    @wisdom =         Wisdom.random
  end

end

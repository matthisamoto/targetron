class Persona < ActiveRecord::Base
  
  def self.random
    record = Persona.order("rand()").limit(1)
    return record.first
  end
  
end

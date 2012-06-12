class SpiritAnimal < ActiveRecord::Base

  def self.random
    record = SpiritAnimal.order("rand()").limit(1)
    return record.first
  end

end

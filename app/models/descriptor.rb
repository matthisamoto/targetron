class Descriptor < ActiveRecord::Base
  
  def self.random
    record = Descriptor.order("rand()").limit(1)
    return record.first
  end
  
end

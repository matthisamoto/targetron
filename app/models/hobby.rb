class Hobby < ActiveRecord::Base

  def self.random
    record = Hobby.order("rand()").limit(1)
    return record.first
  end

end

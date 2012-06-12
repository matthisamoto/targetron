class Audience < ActiveRecord::Base

  def self.random
    record = Audience.order("rand()").limit(1)
    return record.first
  end

end

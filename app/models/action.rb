class Action < ActiveRecord::Base

  def self.random
    record = Action.order("rand()").limit(1)
    return record.first
  end

end

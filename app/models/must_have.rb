class MustHave < ActiveRecord::Base

  def self.random
    record = MustHave.order("rand()").limit(1)
    return record.first
  end

end

class Media < ActiveRecord::Base

  def self.pick_two
    records = Media.order("rand()").limit(2)
    return records
  end

end

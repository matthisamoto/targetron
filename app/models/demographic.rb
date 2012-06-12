class Demographic < ActiveRecord::Base

  def self.pick_two
    records = Demographic.order("rand()").limit(2)
    return records
  end

end

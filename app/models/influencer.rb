class Influencer < ActiveRecord::Base

def self.pick_two
  records = Influencer.order("rand()").limit(2)
  return records
end

end

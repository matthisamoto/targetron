class NickCageFilm < ActiveRecord::Base

  def self.random
    record = NickCageFilm.order("rand()").limit(1)
    return record.first
  end

end

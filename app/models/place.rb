class Place < ApplicationRecord

  def full_address
    "#{street_address} #{city} #{state}"
  end
end

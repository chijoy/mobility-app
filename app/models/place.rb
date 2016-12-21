class Place < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode

  def pretty_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def pretty_updated_at
    updated_at.strftime("%m/%d/%Y")
  end
  
  def full_address
    "#{street_address} #{city} #{state}"
  end
end

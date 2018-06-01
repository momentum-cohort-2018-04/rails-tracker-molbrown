json.array! @insects do |insect|
    json.extract! insect, :id, :name, :species, :latitude, :longitude, :plant,  :notes 
    # :image
  end



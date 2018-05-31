
# json.id @insect.id
# json.name @insect.name
# json.species @insect.species
# json.latitude @insect.latitude
# json.longitude @insect.longitude
# json.plant @insect.plant


json.links do
    json.self api_v1_insect_path(@insect)
    json.list api_v1_insects_path
    json.update do
        json.method "PUT"
        json.href api_v1_insect_path(@insect)
    end
    json.delete do
        json.method "DELETE"
        json.href api_v1_insect_path(@insect)
    end
end
json.data do
    json.id @insect.id
    json.attributes do
        json.name @insect.name
        json.species @insect.species
        json.latitude @insect.latitude
        json.longitude @insect.longitude
        json.plant @insect.plant
        json.notes @insect.notes
    end
end
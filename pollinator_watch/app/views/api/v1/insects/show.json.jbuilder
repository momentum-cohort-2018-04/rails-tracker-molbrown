
# json.id @insect.id
# json.name @insect.name
# json.species @insect.species
# json.latitude @insect.latitude
# json.longitude @insect.longitude
# json.plant @insect.plant
# json.notes @insect.notes


json.links do
    json.self insect_url(@insect)
    json.list insects_url
    json.update do
        json.method "PUT"
        json.href insect_url(@insect)
    end
    json.delete do
        json.method "DELETE"
        json.href insect_url(@insect)
    end
end
json.data do
    json.id @insect.id
    json.attributes do
        json.name @insect.name
        json.species @insect.species
        json.registry @cat.registry
        json.latitude @insect.latitude
        json.longitude @insect.longitude
        json.plant @insect.plant
        json.notes @insect.notes
    end
end
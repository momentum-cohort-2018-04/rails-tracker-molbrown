
# json.id @note.id
# json.insect_id @note.insect_id
# json.text @note.text

json.links do
    json.self api_v1_insect_note_path(@insect, @note)
    json.list api_v1_insect_notes_path
    json.update do
        json.method "PUT"
        json.href api_v1_insect_note_path(@insect, @note)
    end
    json.delete do
        json.method "DELETE"
        json.href api_v1_insect_note_path(@insect, @note)
    end
end
json.data do
    json.id @note.id
    json.attributes do
        json.id @note.id
        json.insect_id @note.insect_id
        json.text @note.text
    end
end
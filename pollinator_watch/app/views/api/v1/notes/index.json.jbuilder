json.array! @notes do |note|
    json.extract! note, :id, :insect_id, :text
  end
json.extract! room, :id, :title, :location, :description, :invoke, :active_record, :created_at, :updated_at
json.url room_url(room, format: :json)

json.id @text.id
json.title @text.title
json.description @text.description
json.body @text.body
json.data Hash.from_xml(@text.data)
json.created_at @text.created_at
json.updated_at @text.updated_at

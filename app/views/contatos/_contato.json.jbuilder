json.extract! contato, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url contato_url(contato, format: :json)

json.extract! guest, :id, :name, :email, :comments, :publish, :publish_date, :created_at, :updated_at
json.url guest_url(guest, format: :json)
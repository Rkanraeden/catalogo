json.extract! metodo_pago, :id, :code, :name, :string, :producto_id, :created_at, :updated_at
json.url metodo_pago_url(metodo_pago, format: :json)

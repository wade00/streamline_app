json.array!(@dealerships) do |dealership|
  json.extract! dealership, :id, :address, :city, :state, :zip, :phone, :equipment_alley_account
  json.url dealership_url(dealership, format: :json)
end

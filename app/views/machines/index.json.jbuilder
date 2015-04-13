json.array!(@machines) do |machine|
  json.extract! machine, :id, :stock_number, :year, :make, :machine_model, :machine_type, :serial_number, :hours, :price, :dealership, :description
  json.url machine_url(machine, format: :json)
end

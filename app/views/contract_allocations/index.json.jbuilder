json.array!(@contract_allocations) do |contract_allocation|
  json.extract! contract_allocation, :id, :contract_id, :labor_category_id, :labor_rate, :hours
  json.url contract_allocation_url(contract_allocation, format: :json)
end

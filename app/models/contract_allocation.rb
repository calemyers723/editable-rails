class ContractAllocation < ActiveRecord::Base

  scope :sorted, -> { order('contract_allocations.id ASC') }

  validates :contract_id, presence:true, numericality: { only_integer: true}
  validates :labor_category_id, presence:true, numericality: { only_integer: true}
  validates :labor_rate, presence:true, numericality: { only_float: true}
  validates :hours, presence:true, numericality: { only_float: true}
end

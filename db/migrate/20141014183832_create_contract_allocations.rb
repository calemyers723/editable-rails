class CreateContractAllocations < ActiveRecord::Migration
  def change
    create_table :contract_allocations do |t|
      t.integer :contract_id
      t.integer :labor_category_id
      t.float :labor_rate
      t.float :hours

      t.timestamps
    end
  end
end

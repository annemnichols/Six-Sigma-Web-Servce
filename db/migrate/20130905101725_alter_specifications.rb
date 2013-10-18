class AlterSpecifications < ActiveRecord::Migration
  def change
    	add_column :quality_specifications, :cvi, :decimal
    	add_column :quality_specifications, :cvw, :decimal
    	add_column :quality_specifications, :goaltype, :string
    	add_column :test_codes,:readcode, :string
    	remove_column :test_codes, :testCode
  end
end

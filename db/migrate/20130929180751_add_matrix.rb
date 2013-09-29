class AddMatrix < ActiveRecord::Migration
  def change
  	add_column :test_codes, :matrix_type, :string
  end
end

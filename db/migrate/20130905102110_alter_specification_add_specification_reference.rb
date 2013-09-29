class AlterSpecificationAddSpecificationReference < ActiveRecord::Migration
  def change
    add_column :quality_specifications, :ref, :string
  end
end

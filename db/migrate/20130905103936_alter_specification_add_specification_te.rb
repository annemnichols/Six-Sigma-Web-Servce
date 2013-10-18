class AlterSpecificationAddSpecificationTe < ActiveRecord::Migration
  def change
    add_column :quality_specifications, :te, :decimal
    add_column :quality_specifications, :cv_d, :decimal
    add_column :quality_specifications, :bias_d, :decimal
  end
end

class AlterSpecificationAddSpecificationTe < ActiveRecord::Migration
  def change
    add_column :quality_specifications, :te, :double
    add_column :quality_specifications, :cv_d, :double
    add_column :quality_specifications, :bias_d, :double
  end
end

class AlterSpecificationAddSpecificationSampleType < ActiveRecord::Migration
  def change
    add_column :quality_specifications, :sample_type, :string
  end
end

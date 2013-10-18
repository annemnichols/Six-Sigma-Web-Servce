class Lowercase < ActiveRecord::Migration
  def change
  	remove_column :test_codes, :testCodeText
  	remove_column :test_codes, :testExpansion
    add_column :test_codes,:testcodetext, :string
    add_column :test_codes,:testexpansion, :string
  end
end

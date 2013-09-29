class AddChangeLogging < ActiveRecord::Migration
  def change
    
    create_table :change_loggings do |t|
      t.datetime :dateTimeLogged
      t.string :logRecord

      t.timestamps
    end
    
    change_table :quality_specifications do |t|
    				t.references :users
    	end
  end
end

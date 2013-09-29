class ChangeLogging < ActiveRecord::Base
  
  validates :logRecord, :users_id, :presence => true
end

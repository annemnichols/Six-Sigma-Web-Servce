class ChangeLogging < ActiveRecord::Base
  attr_accessible :logRecord, :user_id, :user_email
  
  validates :logRecord, :presence => true
end

class TestCode < ActiveRecord::Base
  has_many :quality_specifications
  attr_accessible  :testCodeText,	:testExpansion,	:notes, :active, :readcode

require 'csv'

def self.open_spreadsheet(file)
  	case File.extname(file.original_filename)
  		when ".csv" then Csv.new(file.path, nil, :ignore)
  		when ".xls" then Excel.new(file.path, nil, :ignore)
  		when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  	else raise "Unknown file type: #{file.original_filename}"
  	end
end
  
def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |specificaiton|
      csv << specificaiton.attributes.values_at(*column_names)
    end
  end
end

def self.import(file)  
  CSV.foreach(file.path, headers: true) do |row|  
    TestCode.create! row.to_hash  
  end 
end
  
  
end

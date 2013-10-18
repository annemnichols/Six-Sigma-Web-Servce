namespace :export do
  desc "Prints tests and specifications.all in a seeds.rb way."
  task :seeds_format => :environment do
    TestCode.order(:id).all.each do |test|
      puts "TestCode.create(#{test.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    
    QualitySpecification.order(:id).all.each do |test|
      puts "QualitySpecification.create(#{test.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    
  end
end
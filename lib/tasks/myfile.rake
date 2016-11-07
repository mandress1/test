require 'csv'

namespace :csv do

desc "Import CSV Data from Pokemon CSV data"
task :taskname => :environment do
Pokemon.delete_all 
csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  p = Pokemon.create!({
  :poke_id => row[0],
  :poke_name => row[1],
  :weight => row[2],
  :height => row[3],
  :base_experience => row[4],
  :generation =>row[5]})
  p.poke_name[0]=p.poke_name[0].capitalize
  p.save
  puts "#{p.poke_name} saved"
end

puts "There are now #{Pokemon.count} rows in the Pokémon table"
end
end
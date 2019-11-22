# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

json = JSON.parse(File.read(Rails.root.join('public', 'rushing.json')))
json.each do |data|
  player = Rushing.find_or_initialize_by(player: data["Player"])
  player.team = data["Team"]
  player.pos = data["Pos"]
  player.att = data["Att"].to_s.gsub(',', '').to_i
  player.att_g = data["Att/G"]
  player.yds = data["Yds"].to_s.gsub(',', '').to_i
  player.avg = data["Avg"]
  player.yds_g = data["Yds/G"]
  player.td = data["TD"].to_s.gsub(',', '').to_i
  player.lng = data["Lng"].to_s.gsub(',', '').gsub('T', '').to_i
  player.lng_t = data["Lng"].to_s.include?('T')
  player.first = data["1st"].to_s.gsub(',', '').to_i
  player.first_p = data["1st%"]
  player.twenty_p = data["20+"].to_s.gsub(',', '').to_i
  player.forty_p = data["40+"].to_s.gsub(',', '').to_i
  player.fum = data["FUM"].to_s.gsub(',', '').to_i
  player.save!
end

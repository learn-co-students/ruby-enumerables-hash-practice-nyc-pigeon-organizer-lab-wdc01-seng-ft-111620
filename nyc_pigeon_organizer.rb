pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(pigeon_data)
  new_data = {}

  pigeon_data[:gender].each_value do |arrNames| arrNames.each do |name|
    new_data[name] = {
      :color => pigeon_data[:color].keys.map {|key|key.to_s if pigeon_data[:color][key].include?(name)}.compact, 
      :gender => pigeon_data[:gender].keys.map {|key|key.to_s if pigeon_data[:gender][key].include?(name)}.compact, 
      :lives => pigeon_data[:lives].keys.map {|key|key.to_s if pigeon_data[:lives][key].include?(name)}.compact
    }
  end
end
new_data
end

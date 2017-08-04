Champion.delete_all
champion_list = RiotParser.json_string

champion_list["data"].each do |champion_json, champion|

  Champion.create(name: champion["name"], title: champion["title"], stats: champion["stats"], lore: champion["lore"])
end

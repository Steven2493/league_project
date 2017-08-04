Champion.delete_all
champion_list = RiotParser.json_string

champion_list["data"].each do |champion_key, champion|

  Champion.create(name: champion_key, title: champion["title"], stats: champion["stats"], lore: champion["lore"])
end

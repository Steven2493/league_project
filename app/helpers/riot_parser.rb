module RiotParser

  def self.json_string
    url = "https://na1.api.riotgames.com/lol/static-data/v3/champions?"
    query = "locale=en_US&tags=image&tags=lore&tags=stats&dataById=false&api_key=RGAPI-fd11a863-810b-47bf-8679-0086377ad6cb"
    json_string_response = open(url + query).read
    # json_string_response = open("https://na1.api.riotgames.com/lol/static-data/v3/champions/1?locale=en_US&tags=lore&api_key=RGAPI-fd11a863-810b-47bf-8679-0086377ad6cb").read
    ruby_hash_response = JSON.parse(json_string_response)
  end

end

helpers RiotParser

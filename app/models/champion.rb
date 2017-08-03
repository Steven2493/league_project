# require 'json'
# require 'open-uri'
# require 'pry'
#
# module RiotParser
#
#   def self.json_string
#     url = "https://na1.api.riotgames.com/lol/static-data/v3/champions?"
#     query = "locale=en_US&tags=image&tags=lore&tags=stats&dataById=false&api_key=RGAPI-fd11a863-810b-47bf-8679-0086377ad6cb"
#     json_string_response = open(url + query).read
#     #json_string_response = open("https://na1.api.riotgames.com/lol/static-data/v3/champions/1?locale=en_US&tags=lore&api_key=RGAPI-fd11a863-810b-47bf-8679-0086377ad6cb").read
#     ruby_hash_response = JSON.parse(json_string_response)
#   end
# end


class Champion  < ApplicationRecord
  attr_accessor :id, :name, :title, :stats, :lore

  def initialize(args = {})
    @id = args["id"]
    @name = args["name"]
    @title = args["title"]
    @stats = args["stats"]
    @lore = args["lore"]
  end
end


champion_list = RiotParser.json_string
array = []
champion_list["data"].each do |champion_json, champion|
  array << Champion.new(champion)
end
binding.pry
 p array

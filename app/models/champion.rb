class Champion  < ApplicationRecord
  validates :name, :title, :stats, :lore, presence: true

  has_many :champ_one, class_name: 'Champion', foreign_key: 'champ_one_id'
  has_many :champ_two, class_name: 'Champion', foreign_key: 'champ_two_id'
end

class Poll < ActiveRecord::Base
  belongs_to :champ_one, class_name: 'Champion'
  belongs_to :champ_two, class_name: 'Champion'
  belongs_to :user

end

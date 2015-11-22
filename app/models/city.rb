class City < ActiveRecord::Base
  has_many :users
  has_many :events

  extend FriendlyId
  friendly_id :name, use: :slugged

end

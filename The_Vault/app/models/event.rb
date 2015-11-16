class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  validates :body, presence: true 
  validates :title, length: { maximum: 200 }
  validates :title, presence: true

end

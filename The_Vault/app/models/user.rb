class User < ActiveRecord::Base
  has_many :events
  belongs_to :city

  validates :email, uniqueness: true
  validates :email, presence: true

  validates :alias, uniqueness: true
  validates :alias, presence: true

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({alias: params[:alias]})
    @user.try(:authenticate, params[:password])
  end


end

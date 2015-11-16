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

  has_attached_file :avatar,
  :styles => { :medium => "150x150>", :thumb => "44x44#" },
  :default_url => "/images/default.jpg"

  validates_attachment :avatar, :presence => true,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
  :size => { :in => 0..1000.kilobytes }

end

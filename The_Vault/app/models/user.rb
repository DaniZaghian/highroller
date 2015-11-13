class User < ActiveRecord::Base
  has_many :events

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({alias: params[:alias]})
    @user.try(:authenticate, params[:password])
  end


end

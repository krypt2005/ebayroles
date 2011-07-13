class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :email, :username, :password, :password_confirmation ,:role

  CONSTANT= [["Admin", "Admin"], ["User","User"]]

  has_many :eads

end

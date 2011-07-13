class Ead < ActiveRecord::Base
        validates :price, :numericality => true
  validates :name , :seller_id ,:price ,:email, :presence => true

   validates :name , :email , :uniqueness => true

  validates  :email ,     :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

belongs_to :user
  belongs_to :user_session
end

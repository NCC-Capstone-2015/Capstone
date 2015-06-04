class User < ActiveRecord::Base
  belongs_to :login
  belongs_to :company_info
  has_many :saved_lists, through: :saved_list_users
  has_many :giving_backs
  has_many :user_phones
  has_many :graduate_degrees
  has_many :undergraduate_degrees

end

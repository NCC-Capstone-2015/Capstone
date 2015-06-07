# Associations implemented by Cornelius Donley

class User < ActiveRecord::Base
  belongs_to :login
  belongs_to :company_info
  has_many :saved_list_users, :dependent => :destroy
  has_many :saved_lists, :through => :saved_list_users
  has_many :giving_backs, :dependent => :destroy
  has_many :user_phones, :dependent => :destroy
  has_many :graduate_degrees, :dependent => :destroy
  has_many :undergraduate_degrees, :dependent => :destroy
  has_many :user_surveys, :dependent => :destroy

end

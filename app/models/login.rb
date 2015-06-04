class Login < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  attr_accessor :logon

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:logon]
  has_many :saved_lists, :dependent => :destroy
  has_one :user, :dependent => :destroy
  has_many :surveys
  
  #adds case insensitivity for username
  validates :username,
  :presence => true,
  :uniqueness => {
  :case_sensitive => false
  }
  
  #overrides database authentication to allow username login
  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if logon = conditions.delete(:logon)
        where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => logon.downcase }]).first
      else
        where(conditions.to_hash).first
      end
    end
end

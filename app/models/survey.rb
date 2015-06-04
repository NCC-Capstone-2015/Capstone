class Survey < ActiveRecord::Base
  belongs_to :login
  has_many :survey_questions, :dependent => :destroy
  has_many :user_surveys, :dependent => :destroy
end

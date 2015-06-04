class Survey < ActiveRecord::Base
  belongs_to :login
  has_many :survey_questions
  has_many :user_surveys
end

class Survey < ActiveRecord::Base
  belongs_to :login, dependent: :destroy
  has_many :survey_questions
  has_many :user_surveys
end

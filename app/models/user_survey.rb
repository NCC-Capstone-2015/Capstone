class UserSurvey < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :survey, dependent: :destroy
  has_many :user_survey_responses
end

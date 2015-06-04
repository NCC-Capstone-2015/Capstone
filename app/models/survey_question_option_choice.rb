class SurveyQuestionOptionChoice < ActiveRecord::Base
  belongs_to :survey_question
  has_many :user_survey_responses
end

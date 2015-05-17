class SurveyQuestion < ActiveRecord::Base
  belongs_to :survey
  has_many :survey_question_options
  has_many :survey_question_option_choices
  has_many :user_survey_responses
end

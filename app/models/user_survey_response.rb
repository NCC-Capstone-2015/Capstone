class UserSurveyResponse < ActiveRecord::Base
  belongs_to :user_survey
  belongs_to :survey_question
  belongs_to :survey_question_option
  belongs_to :survey_question_option_choices
end

class UserSurveyResponse < ActiveRecord::Base
  belongs_to :user_survey, dependent: :destroy
  belongs_to :survey_question, dependent: :destroy
  belongs_to :survey_question_option, dependent: :destroy
  belongs_to :survey_question_option_choice, dependent: :destroy
end

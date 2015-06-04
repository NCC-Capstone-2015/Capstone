class SurveyQuestion < ActiveRecord::Base
  belongs_to :survey
  has_many :survey_question_options, :dependent => :destroy
  has_many :survey_question_option_choices, :dependent => :destroy
  has_many :user_survey_responses, :dependent => :destroy
end

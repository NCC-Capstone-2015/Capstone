FactoryGirl.define do
  factory :user_survey_response do
    user_survey_id 1
survey_question_id 1
survey_question_option_id 1
survey_question_option_choice_id 1
response_text "MyString"
user_survey nil
survey_question nil
survey_question_option nil
survey_question_option_choices nil
  end

end

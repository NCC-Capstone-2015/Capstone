# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

login1 = Login.create(username: 'cvdonley', password: 'RonPaul2012', email: 'cvdonley@noctrl.edu', first_name: 'Cornelius', last_name: 'Donley', login_type: 1, middle_initial: 'VA')

company2 = Company.create(company_name: 'RobCo')
login2 = Login.create(username: 'jduser', password: 'password', email: 'jjdoe@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now,first_name: "John", last_name: 'Doe', login_type: 2)
user2 = User.create(login_id: login2.id, email_addr: 'jjdoe@noctrl.edu', city: 'Naperville', state: 'IL', zip: '60540', nccid: '0220123', program: 'Computer Science', spouse_first_name: 'Jane', spouse_last_name: 'Doe', spouse_middle_initial: 'J', number_children: 1, ethnicity: 'hispanic', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, company_id: company2.id, job_title: 'Systems Analyst', birth_day: '1980-01-01', start_date:'2014-09-15', salary_range: 3, street: '610 N. Brainard St.')
user_phone2 = UserPhone.create(user_id: user2.id, country_code: '1', area_code: '260', prefix: '630', suffix: '1031', user_phone_type: 1)
college2 = College.create(college_name: 'North Central College')
degree2 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree2 = UndergraduateDegree.create(user_id: user2.id, college_id: college2.id, degree_id: degree2.id, graduation_date: '2012-12-21')

degree3 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college3 = College.create(college_name: 'North Central College')
graduate_degree2 = GraduateDegree.create(user_id: user2.id, college_id: college3.id, degree_id: degree3.id, graduation_date: '2016-12-21', status: 1)

company3 = Company.create(company_name: 'Vandelay Industries')
login3 = Login.create(username: 'gcuser', password: 'password', email: 'gcostanza@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now,first_name: "George", last_name: 'Costanza', login_type: 2)
user3 = User.create(login_id: login3.id, email_addr: 'gcostanza@noctrl.edu', city: 'Manhattan', state: 'NY', zip: '12345', nccid: '0120124', program: 'Business Administration', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 0, phone_opt_in: 0, badges_opt_in: 1, status: 1, company_id: company3.id, job_title: 'Importer/Exporter', birth_day: '1968-02-02', start_date:'2014-09-15', salary_range: 2, street: '1100 South St.')
user_phone3 = UserPhone.create(user_id: user3.id, area_code: '110', prefix: '120', suffix: '1111', user_phone_type: 0)

login4 = Login.create(username: 'cwuser', password: 'password', email: 'cwinger@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now,first_name: "Christian", last_name: 'Winger', login_type: 2)
college4 = College.create(college_name: 'Vandelay Tech')
degree4 = Degree.create(major_name: 'Economics', degree_type: 3)
undergraduate_degree3 = UndergraduateDegree.create(user_id: user3.id, college_id: college4.id, degree_id: degree4.id, graduation_date: '2012-12-21')
degree5 = Degree.create(major_name: 'Business Administration', degree_type: 4)
college5 = College.create(college_name: 'North Central College')
graduate_degree4 = GraduateDegree.create(user_id: user3.id, college_id: college5.id, degree_id: degree5.id, graduation_date: '2017-6-21', status: 1)

login4 = Login.create(username: 'cwuser', password: 'password', first_name: 'Christian', last_name: 'Winger', login_type: 2)
user4 = User.create(login_id: login4.id, email_addr: 'cwinger@noctrl.edu', city: 'Bloomington', state: 'IL', zip: '61705', nccid: '1120123', program: 'Mathematics', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 0, birth_day: '1993-04-10', start_date:'2011-09-15', salary_range: 0, street: '9507 Grandville')
user_phone4 = UserPhone.create(user_id: user4.id, area_code: '309', prefix: '826', suffix: '2303', user_phone_type: 0)
college6 = College.create(college_name: 'Illinois State')
degree6 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree4 = UndergraduateDegree.create(user_id: user4.id, college_id: college6.id, degree_id: degree6.id, graduation_date: '2012-12-21')
degree7 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college7 = College.create(college_name: 'North Central College')
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree7.id, graduation_date: '2014-6-21', status: 0)
degree8 = Degree.create(major_name: 'Mathematics', degree_type: 5)
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree8.id, graduation_date: '2017-6-21', status: 1)

login5 = Login.create(username: 'worker', password: 'password', first_name: 'Jane', last_name: 'Doe', login_type: 0)

list1 = SavedList.create(login_id: login1.id, list_name: 'My First List', date_saved: '2015-05-28')
list_users1 = SavedListUser.create(saved_list_id: list1.id, user_id: user3.id)


survey1 = Survey.create(login_id: login5.id, survey_name: 'Seed Survey', status: 0, survey_description: 'A survey for testing', date_created: Date.current)

survey_question1 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 0, display_order: 0, required: true, text: 'Sample text response question')

survey_question2 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 1, display_order: 1, required: true, text: 'Sample single answer question')
survey_question_option21 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 0, text: "Option 1")
survey_question_option22 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 1, text: "Option 2")
survey_question_option23 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 2, text: "Option 3")

survey_question3 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 2, display_order: 2, required: true, text: 'Sample multiple answer question')
survey_question_option31 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 0, text: "Option 1")
survey_question_option32 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 1, text: "Option 2")
survey_question_option33 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 2, text: "Option 3")

survey_question4 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 3, display_order: 3, required: true, text: 'Sample multiple sub-question')
survey_question_option41 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 0, text: "Sub-Question 1")
survey_question_option42 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 1, text: "Sub-Question 2")
survey_question_option43 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 2, text: "Sub-Question 3")
survey_question_option_ch41 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 0, text: "Choice 1")
survey_question_option_ch42 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 1, text: "Choice 2")
survey_question_option_ch43 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 2, text: "Choice 3")

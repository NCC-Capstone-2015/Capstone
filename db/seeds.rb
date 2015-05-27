# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

login1 = Login.create(username: 'cvdonley', password: 'RonPaul2012', first_name: 'Cornelius', last_name: 'Donley', login_type: 2, middle_initial: 'VA')
company1 = Company.create(company_name: 'Microsoft Corporation')
company_info1 = CompanyInfo.create(company_id: company1.id, street: '1 Microsoft Way', city: 'Redmond', state: 'WA', zip: '98052', country_code: '+1', area_code: '425', prefix: '882', suffix: '8080')
user1 = User.create(login_id: login1.id, email_addr: 'cvdonley@noctrl.edu', street: '1537 Westminster Dr', city: 'Naperville', state: 'IL', zip: '60563', company_id: company1.id, spouse_first_name: 'Tina', spouse_last_name: 'Fey', spouse_middle_initial: '', number_children: 0, birth_day: '1987-12-13', ethnicity: 'Mixed Race', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, salary_range: 3, job_title: 'Fanboy', start_date: '2001-11-15', end_date: '')
user_phone1 = UserPhone.create(user_id: user1.id, country_code: '+1', area_code: '260', prefix: '704', suffix: '0030', user_phone_type: 2)
college1 = College.create(college_name: 'School of Hard Knocks')
degree1 = Degree.create(major_name: 'Life', degree_type: 2)
undergraduate_degree1 = UndergraduateDegree.create(user_id: user1.id, college_id: college1.id, degree_id: degree1.id, graduation_date: '2012-12-21')

login2 = Login.create(username: 'jduser', password: 'password', first_name: 'John', last_name: 'Doe', login_type: 0)
company2 = Company.create(company_name: 'RobCo')
user2 = User.create(login_id: login2.id, email_addr: 'jjdoe@noctrl.edu', city: 'Naperville', state: 'IL', zip: '60540', spouse_first_name: 'Jane', spouse_last_name: 'Doe', spouse_middle_initial: 'J', number_children: 1, ethnicity: 'hispanic', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, company_id: company2.id, job_title: 'Systems Analyst', birth_day: '1980-01-01', start_date:'2014-09-15', salary_range: 3, street: '610 N. Brainard St.')
user_phone2 = UserPhone.create(user_id: user2.id, country_code: '1', area_code: '260', prefix: '630', suffix: '1031', user_phones_type: 1)

company3 = Company.create(company_name: 'Vandelay Industries')
login3 = Login.create(username: 'gcuser', password: 'password', first_name: 'George', last_name: 'Costanza', login_type: 0)
user3 = User.create(login_id: login3.id, email_addr: 'gcostanza@noctrl.edu', city: 'Manhattan', state: 'NY', zip: '12345', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 0, phone_opt_in: 0, badges_opt_in: 1, status: 1, company_id: company3.id, job_title: 'Importer/Exporter', birth_day: '1968-02-02', start_date:'2014-09-15', salary_range: 2, street: '1100 South St.')
user_phone3 = UserPhone.create(user_id: user3.id, area_code: '110', prefix: '120', suffix: '1111', user_phones_type: 0)

login4 = Login.create(username: 'cwuser', password: 'password', first_name: 'Christian', last_name: 'Winger', login_type: 0)
user4 = User.create(login_id: login4.id, email_addr: 'cwinger@noctrl.edu', city: 'Bloomington', state: 'IL', zip: '61705', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 0, birth_day: '1993-04-10', start_date:'2011-09-15', salary_range: 0, street: '9507 Grandville')
user_phone4 = UserPhone.create(user_id: user4.id, area_code: '309', prefix: '826', suffix: '2303', user_phones_type: 0)
